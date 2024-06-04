transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {e:/intelfpga_lite/22.1std/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog -vlog01compat -work lpm_ver {e:/intelfpga_lite/22.1std/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog -vlog01compat -work sgate_ver {e:/intelfpga_lite/22.1std/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog -vlog01compat -work altera_mf_ver {e:/intelfpga_lite/22.1std/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/altera_lnsim_ver
vmap altera_lnsim_ver ./verilog_libs/altera_lnsim_ver
vlog -sv -work altera_lnsim_ver {e:/intelfpga_lite/22.1std/quartus/eda/sim_lib/altera_lnsim.sv}

vlib verilog_libs/cyclonev_ver
vmap cyclonev_ver ./verilog_libs/cyclonev_ver
vlog -vlog01compat -work cyclonev_ver {e:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_ver {e:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_hmi_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_ver {e:/intelfpga_lite/22.1std/quartus/eda/sim_lib/cyclonev_atoms.v}

vlib verilog_libs/cyclonev_hssi_ver
vmap cyclonev_hssi_ver ./verilog_libs/cyclonev_hssi_ver
vlog -vlog01compat -work cyclonev_hssi_ver {e:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_hssi_ver {e:/intelfpga_lite/22.1std/quartus/eda/sim_lib/cyclonev_hssi_atoms.v}

vlib verilog_libs/cyclonev_pcie_hip_ver
vmap cyclonev_pcie_hip_ver ./verilog_libs/cyclonev_pcie_hip_ver
vlog -vlog01compat -work cyclonev_pcie_hip_ver {e:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_pcie_hip_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_pcie_hip_ver {e:/intelfpga_lite/22.1std/quartus/eda/sim_lib/cyclonev_pcie_hip_atoms.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final {E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final/Program_counter.sv}
vlog -sv -work work +incdir+E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final {E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final/Register.sv}
vlog -sv -work work +incdir+E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final {E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final/MUX.sv}
vlog -sv -work work +incdir+E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final {E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final/Adder.sv}
vlog -sv -work work +incdir+E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final {E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final/Extend.sv}
vlog -sv -work work +incdir+E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final {E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final/ALU.sv}
vlog -sv -work work +incdir+E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final {E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final/Main_Decoder.sv}
vlog -sv -work work +incdir+E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final {E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final/PC_Logic.sv}
vlog -sv -work work +incdir+E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final {E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final/ALU_Decoder.sv}
vlog -sv -work work +incdir+E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final {E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final/Decoder.sv}
vlog -sv -work work +incdir+E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final {E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final/Condition_Check.sv}
vlog -sv -work work +incdir+E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final {E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final/Flagsreg.sv}
vlog -sv -work work +incdir+E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final {E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final/Conditional_Logic.sv}
vlog -sv -work work +incdir+E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final {E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final/Control_Unit.sv}
vlog -sv -work work +incdir+E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final {E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final/processorTop.sv}
vlog -sv -work work +incdir+E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final {E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final/InstMem.sv}
vlog -sv -work work +incdir+E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final {E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final/DataMem.sv}

vlog -sv -work work +incdir+E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final {E:/Users/Usuario/Documents/grupo8-digital-design-lab-2024/Proyecto_Final/processorTop_tb4.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  processorTop_tb4

add wave *
view structure
view signals
run -all
