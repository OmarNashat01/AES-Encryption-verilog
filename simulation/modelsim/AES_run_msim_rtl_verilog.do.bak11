transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/sicom/Desktop/University/Logic-2/Project {C:/Users/sicom/Desktop/University/Logic-2/Project/AES.v}
vlog -vlog01compat -work work +incdir+C:/Users/sicom/Desktop/University/Logic-2/Project {C:/Users/sicom/Desktop/University/Logic-2/Project/Sbox.v}
vlog -vlog01compat -work work +incdir+C:/Users/sicom/Desktop/University/Logic-2/Project {C:/Users/sicom/Desktop/University/Logic-2/Project/Sboxall.v}
vlog -vlog01compat -work work +incdir+C:/Users/sicom/Desktop/University/Logic-2/Project {C:/Users/sicom/Desktop/University/Logic-2/Project/ShiftRows.v}
vlog -vlog01compat -work work +incdir+C:/Users/sicom/Desktop/University/Logic-2/Project {C:/Users/sicom/Desktop/University/Logic-2/Project/KeyExpansion.v}
vlog -vlog01compat -work work +incdir+C:/Users/sicom/Desktop/University/Logic-2/Project {C:/Users/sicom/Desktop/University/Logic-2/Project/mixColumns.v}

vlog -vlog01compat -work work +incdir+C:/Users/sicom/Desktop/University/Logic-2/Project {C:/Users/sicom/Desktop/University/Logic-2/Project/AES_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  AES_tb

add wave *
view structure
view signals
run -all
