; #CONFIG


set VHDL_FILES {	
									../../VHD/gensync.vhd
									../../VHD/image_process.vhd
									../../VHD/position.vhd
									../../VHD/top.vhd
							 }

set LIBRARY_NAME LIB_VHD
set LIBRARY_PATH ./../libs/LIB_VHD
; #END CONFIG

#gui_start

read_file -type vhdl $VHDL_FILES

current_goal Design_Read -alltop

set_option lib $LIBRARY_NAME $LIBRARY_PATH
set_option hdllibdu true

precompile_design $VHDL_FILES -lib $LIBRARY_NAME -path $LIBRARY_PATH

compile_design -force

current_goal lint/lint_rtl -alltop
run_goal
current_goal lint/lint_abstract -alltop
run_goal
current_goal adv_lint/adv_lint_struct -alltop
run_goal
current_goal adv_lint/adv_lint_verify -alltop
run_goal

current_goal lint/lint_rtl -alltop

exit
