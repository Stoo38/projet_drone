ifdef gui
  mode = -gui
endif

src_files = image_process.vhd \
			gensync.vhd \
			tbench.sv \
			position.vhd \
			bench_position.vhd


run:
	irun $(mode) -incdir . -input input.cmd -v93 -access +rwc $(src_files)

clean:
	-rm -rf *bmp irun* waves* INCA* *diag

compile : 
	vlib drone_lib_basique
	vcom -93 -work drone_lib_basique image_process.vhd
	vcom -93 -work drone_lib_basique gensync.vhd
	vcom -93 -work drone_lib_basique position.vhd
	vcom -93 -work drone_lib_basique bench_position.vhd
	vlog -sv -work drone_lib_basique tbench.sv

msim:
	-rm -rf drone_lib_basique vsim.wlf transcript
	vlib drone_lib_basique
	vcom -93 -work drone_lib_basique image_process.vhd
	vcom -93 -work drone_lib_basique gensync.vhd
	vcom -93 -work drone_lib_basique position.vhd
#	vcom -93 -work drone_lib_basique bench_position.vhd
	vlog -sv -work drone_lib_basique tbench.sv
	vsim drone_lib_basique.tbench
clean_mm:
	-rm -rf drone_lib_basique vsim.wlf transcript
