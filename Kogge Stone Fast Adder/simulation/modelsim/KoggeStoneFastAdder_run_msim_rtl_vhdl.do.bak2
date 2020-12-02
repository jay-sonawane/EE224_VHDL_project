transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Quartus/quartus projects/Kogge Stone Fast Adder/KoggeStoneFastAdder.vhd}
vcom -93 -work work {D:/Quartus/quartus projects/Kogge Stone Fast Adder/GPcell.vhd}
vcom -93 -work work {D:/Quartus/quartus projects/Kogge Stone Fast Adder/SumCarryGenerator.vhd}
vcom -93 -work work {D:/Quartus/quartus projects/Kogge Stone Fast Adder/GP_Generator.vhd}
vcom -93 -work work {D:/Quartus/quartus projects/Kogge Stone Fast Adder/andGate.vhd}
vcom -93 -work work {D:/Quartus/quartus projects/Kogge Stone Fast Adder/notGate.vhd}
vcom -93 -work work {D:/Quartus/quartus projects/Kogge Stone Fast Adder/orGate.vhd}
vcom -93 -work work {D:/Quartus/quartus projects/Kogge Stone Fast Adder/XORgate.vhd}

vcom -93 -work work {D:/Quartus/quartus projects/Kogge Stone Fast Adder/testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run 50 ns
