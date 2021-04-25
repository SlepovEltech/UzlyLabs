onerror {quit -f}
vlib work
vlog -work work laab7.vo
vlog -work work laab7.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.laab7_vlg_vec_tst
vcd file -direction laab7.msim.vcd
vcd add -internal laab7_vlg_vec_tst/*
vcd add -internal laab7_vlg_vec_tst/i1/*
add wave /*
run -all
