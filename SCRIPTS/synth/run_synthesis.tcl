source ../SCRIPTS/define_variables.tcl

#cd $PROJECT_PATH$WORK_PATH

analyze -library $LIBRARY_NAME -format vhdl $VHDL_FILES 

elaborate $DESIGN_NAME -architecture $ARCHI_TOP_NAME -library $LIBRARY_NAME

source ../SCRIPTS/constraints.tcl

compile -exact_map -area_effort high -ungroup_all

#write_sdf RESULTS/$DESIGN_NAME.sdf
#write -format ddc -hierarchy -output RESULTS/$DESIGN_NAME.ddc

#Genere la netlist au format VHDL
write -hierarchy -format vhdl -output ../RESULTS/$DESIGN_NAME.vhd	

report_timing -nworst 10	> ../REPORTS/$DESIGN_NAME.timing.log
report_area			> ../REPORTS/$DESIGN_NAME.area.log
report_power			> ../REPORTS/$DESIGN_NAME.power.log
report_cell			> ../REPORTS/$DESIGN_NAME.cell.log
report_clock			> ../REPORTS/$DESIGN_NAME.clock.log
report_qor			> ../REPORTS/$DESIGN_NAME.qor.log

quit

quit

