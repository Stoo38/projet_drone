set pack_assert_off {numeric_std std_logic_arith}

database -open waves -into waves.shm -default
probe -all -depth all -tasks -dynamic -uvm -packed 4k -unpacked 16k -all -database waves

if {$simvision_attached == 1} { ; # GUI MODE
} else { ; # BATCH MODE
  run
  exit
}
