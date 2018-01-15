source ../SCRIPTS/defines.tcl

#rm -rf $DESIGN_NAME

new_project -f $DESIGN_NAME
read_file -type vhdl $VHDL_FILES



current_goal Design_Read -alltop


link_design -force



current_goal lint/lint_rtl -alltop
run_goal
current_goal lint/lint_abstract -alltop
run_goal
current_goal adv_lint/adv_lint_struct -alltop
run_goal
current_goal adv_lint/adv_lint_verify -alltop
run_goal
current_goal lint/lint_rtl -alltop

save_project
close_project $DESIGN_NAME
quit
#quit






