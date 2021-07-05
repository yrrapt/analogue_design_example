v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 390 -240 390 0 { lab=GND}
N 500 -300 500 -200 { lab=out}
N 460 -300 500 -300 { lab=out}
N 260 -200 280 -200 { lab=#net1}
N 260 -280 260 -200 { lab=#net1}
N 360 -400 360 -380 { lab=#net2}
N 390 -500 390 -380 { lab=#net3}
N 0 -500 390 -500 { lab=#net3}
N 0 -500 0 -340 { lab=#net3}
N 0 -280 0 0 { lab=GND}
N 0 0 390 0 { lab=GND}
N 130 -320 130 -260 { lab=in}
N 130 -320 290 -320 { lab=in}
N 360 -500 360 -460 { lab=#net3}
N 260 -280 290 -280 { lab=#net1}
N 480 -200 500 -200 { lab=out}
N 280 -200 420 -200 { lab=#net1}
N 260 -200 260 -180 { lab=#net1}
N 130 -200 130 -80 { lab=#net4}
N 130 -20 130 0 { lab=GND}
N 260 -120 260 -100 { lab=#net5}
N 260 -100 260 -80 { lab=#net5}
N 260 -20 260 0 { lab=GND}
C {opamp/opamp.sym} 390 -300 0 0 {name=x1}
C {devices/isource.sym} 360 -430 0 1 {name=I0 value=10u}
C {devices/vsource.sym} 0 -310 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 0 0 0 1 {name=l2 lab=GND}
C {code.sym} 630 -440 0 0 {name=SIM only_toplevel=false value="
.param temp=27

*.op
*.ac dec 10 1 10G
.tran 1u 10m


.save all 

"}
C {devices/code.sym} 630 -230 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.options wnflag=1
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_01v8/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_pfet_g5v0d10v5/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d16v0/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d16v0/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_g5v0d10v5/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/nonfet.spice
* Mismatch parameters
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice
* All models
.include \\\\$::SKYWATER_MODELS\\\\/models/all.spice
* Corner
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"}
C {res.sym} 260 -150 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 450 -200 1 0 {name=R2
value=9k
footprint=1206
device=resistor
m=1}
C {sqwsource.sym} 130 -230 0 0 {name=V2 vhi=0.10 freq=1e3}
C {devices/vsource.sym} 130 -50 0 0 {name=V3 value=0.95}
C {lab_wire.sym} 470 -300 0 1 {name=l1 sig_type=std_logic lab=out}
C {lab_wire.sym} 260 -320 0 1 {name=l3 sig_type=std_logic lab=in}
C {devices/vsource.sym} 260 -50 0 0 {name=V4 value=1.0}
