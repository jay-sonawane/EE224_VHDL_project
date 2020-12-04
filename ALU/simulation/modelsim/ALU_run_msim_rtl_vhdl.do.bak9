transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Adit/Desktop/vhdl_project/New/Z_check.vhd}
vcom -93 -work work {C:/Users/Adit/Desktop/vhdl_project/New/XORgate.vhd}
vcom -93 -work work {C:/Users/Adit/Desktop/vhdl_project/New/SumCarryGenerator.vhd}
vcom -93 -work work {C:/Users/Adit/Desktop/vhdl_project/New/orGate.vhd}
vcom -93 -work work {C:/Users/Adit/Desktop/vhdl_project/New/notGate.vhd}
vcom -93 -work work {C:/Users/Adit/Desktop/vhdl_project/New/MY_XOR.vhd}
vcom -93 -work work {C:/Users/Adit/Desktop/vhdl_project/New/MY_NAND.vhd}
vcom -93 -work work {C:/Users/Adit/Desktop/vhdl_project/New/MUX_vec.vhd}
vcom -93 -work work {C:/Users/Adit/Desktop/vhdl_project/New/MUX_2.vhd}
vcom -93 -work work {C:/Users/Adit/Desktop/vhdl_project/New/KoggeStoneFastAdder.vhd}
vcom -93 -work work {C:/Users/Adit/Desktop/vhdl_project/New/GP_Generator.vhd}
vcom -93 -work work {C:/Users/Adit/Desktop/vhdl_project/New/GPcell.vhd}
vcom -93 -work work {C:/Users/Adit/Desktop/vhdl_project/New/andGate.vhd}
vcom -93 -work work {C:/Users/Adit/Desktop/vhdl_project/New/ALU.vhd}

vcom -93 -work work {C:/Users/Adit/Desktop/vhdl_project/New/testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
