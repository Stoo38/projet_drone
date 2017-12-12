#!/bin/bash

source ../VHD/script_vhd.sh

PROJECT_PATH="/tp/xph3app/xph3app602/projet_drone"
LIB_NAME="LIB_BENCH"
#VHDL_FILES=`ls -l bench/ | awk {'print$9'} | grep .vhd`
VHDL_FILES="test_bench.vhd"
OPT_VCOM="+acc -work "

vdel -lib ${PROJECT_PATH}/LIBS/${LIB_NAME} -all 						# Delete the old version oflibrary
vlib ${PROJECT_PATH}/LIBS/${LIB_NAME}           						# Create a new library
vmap ${LIB_NAME} ${PROJECT_PATH}/LIBS/${LIB_NAME} 						
# Create a link between the name of the library and its path

for file in ${VHDL_FILES}
do
	vcom ${OPT_VCOM} ${LIB_NAME} ${PROJECT_PATH}/BENCH/${file}		    # Compile all the VHDL files contained on the VHDL_FILES variable
								                    					# Use the options on OPT_VCOM variable
done
