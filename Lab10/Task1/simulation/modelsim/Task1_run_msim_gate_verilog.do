transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {Task1.vo}

vlog -vlog01compat -work work +incdir+C:/Users/hered/Desktop/shitty\ projs\ 2.0/MARS/Lab10 {C:/Users/hered/Desktop/shitty projs 2.0/MARS/Lab10/half_adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/hered/Desktop/shitty\ projs\ 2.0/MARS/Lab10 {C:/Users/hered/Desktop/shitty projs 2.0/MARS/Lab10/half_adder_testbench.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  half_adder_testbench

add wave *
view structure
view signals
run -all
