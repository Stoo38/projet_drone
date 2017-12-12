#!/bin/bash

PROJECT_PATH="/tp/xph3app/xph3app602/projet_drone"
LIB_NAME="LIB_VHD_COUNTER"
#VHDL_FILES=`ls -l vhd/ | awk {'print$9'} | grep .vhd`
VHDL_FILES="local_counter.vhd global_counter.vhd test_counter.vhd"
OPT_VCOM="-93 -work "

vdel -lib ${PROJECT_PATH}/LIBS/${LIB_NAME} -all 		# Delete the old version of library
vlib ${PROJECT_PATH}/LIBS/${LIB_NAME}           		# Create a new library
vmap ${LIB_NAME} ${PROJECT_PATH}/LIBS/${LIB_NAME} 		# Create a link between the name of the library and its path

for file in ${VHDL_FILES}
do
	vcom ${OPT_VCOM} ${LIB_NAME} ${PROJECT_PATH}/VHD/${file}		    # Compile all the VHDL files contained on the VHDL_FILES variable
								                    # Use the options on OPT_VCOM variable
done
