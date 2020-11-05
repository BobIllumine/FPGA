transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {Task2.vo}

vlog -vlog01compat -work work +incdir+C:/Users/hered/Desktop/shitty\ projs\ 2.0/MARS/Lab10/Task2 {C:/Users/hered/Desktop/shitty projs 2.0/MARS/Lab10/Task2/full_adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/hered/Desktop/shitty\ projs\ 2.0/MARS/Lab10/Task2 {C:/Users/hered/Desktop/shitty projs 2.0/MARS/Lab10/Task2/full_adder_testbench.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  full_adder_testbench

add wave *
view structure
view signals
run -all
