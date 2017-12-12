ifdef gui
  mode = -gui
endif

src_files = image_process.vhd \
			gensync.vhd \
			tbench.sv \		
			position.vhd


run:
	irun $(mode) -incdir . -input input.cmd -v93 -access +rwc $(src_files)

clean:
	-rm -rf *bmp irun* waves* INCA* *diag

compile : 
	vlib drone_lib
	vcom -93 -work drone_lib image_process.vhd
	vcom -93 -work drone_lib gensync.vhd
	vcom -93 -work drone_lib position.vhd
	vlog -sv -work drone_lib tbench.sv

msim:
	vlib drone_lib
	vcom -93 -work drone_lib image_process.vhd
	vcom -93 -work drone_lib gensync.vhd
	vcom -93 -work drone_lib position.vhd
	vlog -sv -work drone_lib tbench.sv
	#vsim drone_lib.tbench
clean_mm:
	-rm -rf drone_lib vsim.wlf transcript
