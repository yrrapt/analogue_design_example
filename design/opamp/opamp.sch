v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {10u} 540 -440 0 0 0.4 0.4 {}
T {10u} 330 -440 0 0 0.4 0.4 {}
T {100u} 740 -440 0 0 0.4 0.4 {}
N 360 -170 360 -140 { lab=#net1}
N 450 -140 540 -140 { lab=#net1}
N 540 -170 540 -140 { lab=#net1}
N 450 -60 470 -60 { lab=vss}
N 470 -60 470 0 { lab=vss}
N 450 -140 450 -90 { lab=#net1}
N 470 -200 540 -200 { lab=vss}
N 470 -200 470 -60 { lab=vss}
N 680 -60 720 -60 { lab=#net2}
N 680 -110 680 -60 { lab=#net2}
N 380 -110 680 -110 { lab=#net2}
N 100 -110 100 -90 { lab=#net2}
N 140 -60 180 -60 { lab=#net2}
N 180 -110 180 -60 { lab=#net2}
N 380 -60 410 -60 { lab=#net2}
N 380 -110 380 -60 { lab=#net2}
N 100 -30 100 -0 { lab=vss}
N 80 -60 100 -60 { lab=vss}
N 80 -60 80 0 { lab=vss}
N 450 -30 450 -0 { lab=vss}
N 360 -310 360 -230 { lab=#net3}
N 400 -340 500 -340 { lab=#net3}
N 540 -280 540 -230 { lab=#net4}
N 540 -340 560 -340 { lab=vdd}
N 560 -400 560 -340 { lab=vdd}
N 540 -400 560 -400 { lab=vdd}
N 340 -400 340 -340 { lab=vdd}
N 340 -340 360 -340 { lab=vdd}
N 360 -400 360 -370 { lab=vdd}
N 540 -400 540 -370 { lab=vdd}
N 760 -400 760 -310 { lab=vdd}
N 560 -400 760 -400 { lab=vdd}
N 760 -250 760 -90 { lab=out}
N 760 -280 780 -280 { lab=vdd}
N 780 -400 780 -280 { lab=vdd}
N 760 -400 780 -400 { lab=vdd}
N 760 -60 780 -60 { lab=vss}
N 780 -60 780 0 { lab=vss}
N 760 -30 760 0 { lab=vss}
N 540 -280 720 -280 { lab=#net4}
N 450 -0 470 0 { lab=vss}
N 360 -140 450 -140 { lab=#net1}
N 360 -200 470 -200 { lab=vss}
N 100 -110 180 -110 { lab=#net2}
N 180 -110 380 -110 { lab=#net2}
N 80 0 100 -0 { lab=vss}
N 100 -0 450 -0 { lab=vss}
N 340 -400 360 -400 { lab=vdd}
N 360 -400 540 -400 { lab=vdd}
N 760 0 780 0 { lab=vss}
N 470 0 760 0 { lab=vss}
N 540 -310 540 -280 { lab=#net4}
N -0 -0 80 -0 { lab=vss}
N 0 -400 340 -400 { lab=vdd}
N 300 -200 320 -200 { lab=in_n}
N 450 -340 450 -280 { lab=#net3}
N 360 -280 450 -280 { lab=#net3}
N 580 -200 600 -200 { lab=in_p}
N 760 -200 820 -200 { lab=out}
N -0 -160 100 -160 {}
N 100 -160 100 -110 {}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 120 -60 0 1 {name=M1
L=2
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 340 -200 0 0 {name=M2
L=0.25
W=10
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 560 -200 0 1 {name=M3
L=0.25
W=10
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 430 -60 0 0 {name=M4
L=2
W=1
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 740 -60 0 0 {name=M5
L=2
W=1
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 520 -340 0 0 {name=M6
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 380 -340 0 1 {name=M7
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 740 -280 0 0 {name=M8
L=0.5
W=1
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {iopin.sym} 0 -400 0 1 {name=p1 lab=vdd}
C {iopin.sym} 0 0 0 1 {name=p2 lab=vss}
C {ipin.sym} 300 -200 0 0 {name=p3 lab=in_n}
C {ipin.sym} 600 -200 0 1 {name=p4 lab=in_p}
C {opin.sym} 820 -200 0 0 {name=p5 lab=out}
C {ipin.sym} 0 -160 0 0 {name=p6 lab=bias_10u}
