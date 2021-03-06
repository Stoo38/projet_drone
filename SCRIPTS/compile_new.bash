#!/bin/bash

##################################################
#
#			CONFIGURATION FOR COMPILATION
#		(ModelSim)
##################################################

if [ "$#" -eq 1 ]
then
	CHOICE_COMPIL=$1												# The first parameter if the bench must be compiled
																	#		3 choices: "design", "bench" or "all"
else
	CHOICE_COMPIL="all"												# By default, Benches and Design Files are compiled
fi

PROJECT_PATH="/tp/xph3app/xph3app602/projet_drone"					# Path of the Project Directory
LIB_NAME="LIB_VHD"													# Name of the Library 
#LIB_NAME_TEST="DRONE_LIB"											# Name of the Library 
#VHDL_FILES=`ls -l vhd/ | awk {'print$9'} | grep .vhd`
																	# List of the different VHDL Files describing the design
VHDL_FILES="
			constants.vhd
			local_counter.vhd
			global_counter.vhd
			image_process.vhd
			gensync.vhd
			position.vhd
			send_ppm.vhd
			"

BENCH_VHD_FILES="														
				test_bench.vhd
				bench_position.vhd
				test_counter.vhd
				"													#List of the different VHDL Files used for the bench

BENCH_VERILOG_FILES="
					tbench.sv"										#List of the different Verilog Files used for the bench

OPT_VCOM="-93 -work" #+acc											# List of the different options of ModelSim used for Compilation
OPT_VLOG="-sv -work"

LOG_FILE="mylog.log"												# Name of the log file

##################################################
#
#				DESIGN COMPILATION
#		(ModelSim)
##################################################
echo ""																	> ${PROJECT_PATH}/LOG/${LOG_FILE}
if [ "$CHOICE_COMPIL" = "design" ] || [ "$CHOICE_COMPIL" = "all" ]
then
	if [ -d "${PROJECT_PATH}/LIBS/${LIB_NAME}" ] 
	then
		vdel -lib ${PROJECT_PATH}/LIBS/${LIB_NAME} -all					>> ${PROJECT_PATH}/LOG/${LOG_FILE}	# Deletes the old version of library
	fi
	vlib ${PROJECT_PATH}/LIBS/${LIB_NAME}								>> ${PROJECT_PATH}/LOG/${LOG_FILE}	# Creates a new library
	vmap ${LIB_NAME} ${PROJECT_PATH}/LIBS/${LIB_NAME}					>> ${PROJECT_PATH}/LOG/${LOG_FILE}	# Creates a link between the name of the library and its path

	for file in ${VHDL_FILES}
	do
		vcom ${OPT_VCOM} ${LIB_NAME} ${PROJECT_PATH}/VHD/${file}		>> ${PROJECT_PATH}/LOG/${LOG_FILE}	# Compiles all the VHDL files contained on the VHDL_FILES variable
																									# Uses the options on OPT_VCOM variable
	done
fi


##################################################
#
#			VHD	BENCH COMPILATION
#		(ModelSim)
##################################################i


if [ "$CHOICE_COMPIL" = "bench" ] || [ "$CHOICE_COMPIL" = "all" ]
then
	#VHDL PART
	if [ -d "${PROJECT_PATH}/LIBS/${LIB_NAME}_BENCH" ] 
	then
		vdel -lib ${PROJECT_PATH}/LIBS/${LIB_NAME}_BENCH -all		>> ${PROJECT_PATH}/LOG/${LOG_FILE}	# Delete the old version of library
	fi
	vlib ${PROJECT_PATH}/LIBS/${LIB_NAME}_BENCH						>> ${PROJECT_PATH}/LOG/${LOG_FILE}	# Create a new library
	vmap ${LIB_NAME}_BENCH ${PROJECT_PATH}/LIBS/${LIB_NAME}_BENCH	>> ${PROJECT_PATH}/LOG/${LOG_FILE}	# Create a link between the name of the library and its path

	for bench in ${BENCH_VHD_FILES}
	do
		vcom ${OPT_VCOM} ${LIB_NAME}_BENCH ${PROJECT_PATH}/BENCH/${bench}	>> ${PROJECT_PATH}/LOG/${LOG_FILE}	# Compile all the VHDL files contained on the VHDL_FILES variable
																										# Use the options on OPT_VCOM variable
	done

	for v_bench in ${BENCH_VERILOG_FILES}
	do
		vlog ${OPT_VLOG} ${LIB_NAME}_BENCH ${PROJECT_PATH}/BENCH/${v_bench}	>> ${PROJECT_PATH}/LOG/${LOG_FILE}	# Compile all the Verilog files contained on the VHDL_FILES variable
																										# Use the options on OPT_VLOG variable
	done

	#VERILOG PART

#	if [ -d "${PROJECT_PATH}/LIBS/${LIB_NAME_TEST}" ] 
#	then
#		vdel -lib ${PROJECT_PATH}/LIBS/${LIB_NAME_TEST} -all		>> ${PROJECT_PATH}/LOG/${LOG_FILE}	# Delete the old version of library
#	fi
#	vlib ${PROJECT_PATH}/LIBS/${LIB_NAME_TEST}						>> ${PROJECT_PATH}/LOG/${LOG_FILE}	# Create a new library
#	vmap ${LIB_NAME_TEST} ${PROJECT_PATH}/LIBS/${LIB_NAME_TEST}		>> ${PROJECT_PATH}/LOG/${LOG_FILE}	# Create a link between the name of the library and its path

#	for v_bench in ${BENCH_VERILOG_FILES}
#	do
#		vlog ${OPT_VLOG} ${LIB_NAME_TEST} ${PROJECT_PATH}/BENCH/${v_bench}	>> ${PROJECT_PATH}/LOG/${LOG_FILE}	# Compile all the VHDL files contained on the VHDL_FILES variable
																										# Use the options on OPT_VLOG variable
#	done
fi


##################################################
#
#				LOG FILE PROCESSING
#		
##################################################
ERRORS=`cat ${PROJECT_PATH}/LOG/${LOG_FILE} | grep "Error:" | wc -l`
WARNINGS=`cat ${PROJECT_PATH}/LOG/${LOG_FILE} | grep "Warning:" | wc -l`

echo ""										>> ${PROJECT_PATH}/LOG/${LOG_FILE}
echo "Total Errors :   ${ERRORS}"			>> ${PROJECT_PATH}/LOG/${LOG_FILE}
echo "Total Warnings : ${WARNINGS}"			>> ${PROJECT_PATH}/LOG/${LOG_FILE}

cat ${PROJECT_PATH}/LOG/${LOG_FILE}

##################################################
#
#				LAUNCH VSIM
#		
##################################################

#vsim -c -L LIB_VHD -do runSim.do LIB_VHD_BENCH.tbench 	#Ligne de commandes
#vsim -L LIB_VHD -do runSim.do LIB_VHD_BENCH.tbench 	#Interface graphique
#vsim -L LIB_VHD LIB_VHD_BENCH.tbench 					#Interface graphique
