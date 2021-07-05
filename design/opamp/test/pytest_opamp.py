import os, yaml
import numpy as np
import matplotlib.pyplot as plt

from yaaade.spice.ngspice import NgSpiceInterface
import yaaade.tools.xschem as xschem
from yaaade.plot.plot import *
from yaaade.measure.measure import *

# import global settings
PROJECT_ROOT = os.environ.get('PROJECT_ROOT')
with open(PROJECT_ROOT+'/design/global_settings.yaml') as global_settings_file:
    global_settings = yaml.load(global_settings_file, Loader=yaml.FullLoader)
    pvt = global_settings['pvt']



def test_op():
    '''
        Test that devices stay within the desired operating regions
        over PVT
    '''

    # create the test utility object
    xschem.netlist_generation(PROJECT_ROOT+'/design/opamp/test/test_opamp.sch', 'rundir')

    # create the spice interface
    yaaade_obj = NgSpiceInterface(netlist_path='rundir/test_opamp.spice')
    # yaaade_obj.config['simulator']['shared'] = True
    yaaade_obj.config['simulator']['shared'] = False
    yaaade_obj.config['simulator']['silent'] = True

    # append the simulation command
    yaaade_obj.set_sim_command('.dc temp -40 125 55')

    # prepopulate 
    results = np.zeros((len(pvt['corners']), len(pvt['vdd']), 3))

    # find all the devices
    devices = yaaade_obj.find_all_mosfets()

    # insert the command to save the devices
    yaaade_obj.insert_op_save(devices, ['vsat_marg'])

    exempt_list = [ ]

    # loop through all corners
    for corner_i, corner in enumerate(pvt['corners']):

        # set corner
        yaaade_obj.set_corner(corner)

        # reload the circuit
        # yaaade_obj.restart_simulation()
        yaaade_obj.run_simulation()
        
        # loop through the supply voltages
        for vdd_i, vdd in enumerate(pvt['vdd']):

            # set the vdd voltage
            yaaade_obj.set_parameters([['vdd', vdd]])
            
            # check device operating regions
            op_pass = yaaade_obj.check_op_region('temp-sweep', exempt_list=exempt_list, skip_insertion=True, devices=devices)

            assert op_pass == True, 'Operating point check failed!'



def test_ac():
    '''
        Test the AC response over PVT 
    '''

    # create the test utility object
    xschem.netlist_generation(PROJECT_ROOT+'/design/opamp/test/test_opamp.sch', 'rundir')

    # create the spice interface
    yaaade_obj = NgSpiceInterface(netlist_path='rundir/test_opamp.spice')
    # yaaade_obj.config['simulator']['shared'] = True
    yaaade_obj.config['simulator']['shared'] = False
    yaaade_obj.config['simulator']['silent'] = True

    # append the simulation command
    yaaade_obj.set_sim_command('.ac dec 10 1 10G')

    # prepopulate 
    results = []

    plt.ion()

    # loop through all corners
    for corner_i, corner in enumerate(pvt['corners']):
        yaaade_obj.set_corner(corner)

        for temp_i, temp in enumerate(pvt['temperatures']):
            yaaade_obj.set_temperature(temp)

            for vdd_i, vdd in enumerate(pvt['vdd']):
                yaaade_obj.set_parameters([['vdd', vdd]])
        
                # run the simulation 
                yaaade_obj.run_simulation()    

                # save the response
                node = 'v(ac)'
                plot_bode(yaaade_obj, node, display=False, title="Open Loop Response", 
                            linewidth=1, alpha=0.5, append=True)

    # save the plot to file
    yaaade_obj.fig.savefig("outputs/bode.svg")


if __name__ == "__main__":
    # test_op()
    test_ac()