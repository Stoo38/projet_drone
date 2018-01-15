#!/bin/bash

PROJECT_PATH="/tp/xph2app/xph2app001/CSI2A_Project"
LIB_NAME="LIB_MSK_MODULATOR"
#VHDL_FILES=`ls -l vhd/ | awk {'print$9'} | grep .vhd`
VHDL_FILES="rom.vhd lut_i.vhd lut_q.vhd counter.vhd encoder.vhd converter_s2p.vhd msk_modulator.vhd"
OPT_VCOM="-work "

vdel -lib ${PROJECT_PATH}/libs/${LIB_NAME} -all 		# Delete the old version oflibrary
vlib ${PROJECT_PATH}/libs/${LIB_NAME}           		# Create a new library
vmap ${LIB_NAME} ${PROJECT_PATH}/libs/${LIB_NAME} 	# Create a link between the name of the library and its path

for file in ${VHDL_FILES}
do
	vcom ${OPT_VCOM} ${LIB_NAME} vhd/${file}		      # Compile all the VHDL files contained on the VHDL_FILES variable
								                                    # Use the options on OPT_VCOM variable
done


