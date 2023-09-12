vlib work
vcom -93 -work work ../../src/XOR_gate.vhd
vcom -93 -work work ../../src/AND_gate.vhd
vcom -93 -work work ../../src/OR_gate.vhd
vcom -93 -work work ../../src/full_adder_single_bit_struc.vhd
vcom -93 -work work ../src/full_adder_single_bit_beh_tb.vhd
vsim -voptargs=+acc full_adder_single_bit_beh_tb
do wave.do
run 100 ns
