
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name ProcesadorESCOMips -dir "/home/developer/Proyectos/xilinx/ProcesadorESCOMpis/ProcesadorESCOMips/planAhead_run_4" -part xc7a100tcsg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/developer/Proyectos/xilinx/ProcesadorESCOMpis/ProcesadorESCOMips/Main.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/developer/Proyectos/xilinx/ProcesadorESCOMpis/ProcesadorESCOMips} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Main.ucf" [current_fileset -constrset]
add_files [list {Main.ucf}] -fileset [get_property constrset [current_run]]
link_design
