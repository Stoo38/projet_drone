source ../scripts/define_variables.tcl

#cd $PROJECT_PATH$WORK_PATH

#set_dont_use c35_CORELIB_TYP/XOR30
#set_dont_use c35_CORELIB_TYP/XOR31

define_design_lib $LIBRARY_NAME -path ../libs_synth/$LIBRARY_NAME

analyze -library $LIBRARY_NAME -format vhdl $VHDL_FILES 

elaborate $DESIGN_NAME -architecture $ARCHI_TOP_NAME -library $LIBRARY_NAME

source ../scripts/top_num.sdc

set_operating_conditions -library c35_CORELIB_TYP WORST

compile -exact_map -area_effort high -ungroup_all
#compile -exact_map -area_effort high

write_sdf ../results/$DESIGN_NAME.sdf
write -format ddc -hierarchy -output ../results/$DESIGN_NAME.ddc

#Genere la netlist au format VHDL
write -hierarchy -format vhdl -output ../results/${DESIGN_NAME}.vhd
write -hierarchy -format verilog -output ../results/$DESIGN_NAME.v		

report_timing -nworst 10	> ../log/$DESIGN_NAME.timing.log
report_area					> ../log/$DESIGN_NAME.area.log
report_power				> ../log/$DESIGN_NAME.power.log
report_cell					> ../log/$DESIGN_NAME.cell.log
report_clock				> ../log/$DESIGN_NAME.clock.log
report_qor					> ../log/$DESIGN_NAME.qor.log

quit

