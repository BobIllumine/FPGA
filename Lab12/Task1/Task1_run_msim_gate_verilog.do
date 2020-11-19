transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {Task1.vo}

vlog -vlog01compat -work work +incdir+C:/Users/hered/Desktop/shitty\ projs\ 2.0/MARS/FPGA/Lab12/Task1 {C:/Users/hered/Desktop/shitty projs 2.0/MARS/FPGA/Lab12/Task1/alu_testbench.v}
vlog -vlog01compat -work work +incdir+C:/Users/hered/Desktop/shitty\ projs\ 2.0/MARS/FPGA/Lab12/Task1 {C:/Users/hered/Desktop/shitty projs 2.0/MARS/FPGA/Lab12/Task1/alu.v}
vlog -vlog01compat -work work +incdir+C:/Users/hered/Desktop/shitty\ projs\ 2.0/MARS/FPGA/Lab12/Task1 {C:/Users/hered/Desktop/shitty projs 2.0/MARS/FPGA/Lab12/Task1/add.v}
vlog -vlog01compat -work work +incdir+C:/Users/hered/Desktop/shitty\ projs\ 2.0/MARS/FPGA/Lab12/Task1 {C:/Users/hered/Desktop/shitty projs 2.0/MARS/FPGA/Lab12/Task1/mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/hered/Desktop/shitty\ projs\ 2.0/MARS/FPGA/Lab12/Task1 {C:/Users/hered/Desktop/shitty projs 2.0/MARS/FPGA/Lab12/Task1/sub.v}
vlog -vlog01compat -work work +incdir+C:/Users/hered/Desktop/shitty\ projs\ 2.0/MARS/FPGA/Lab12/Task1 {C:/Users/hered/Desktop/shitty projs 2.0/MARS/FPGA/Lab12/Task1/srl.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  alu_testbench

add wave *
view structure
view signals
run -all
