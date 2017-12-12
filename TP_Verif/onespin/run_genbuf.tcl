catch {set_mode setup}
catch {clear_design}
catch {delete_design}

catch {stop_message_log}
start_message_log -force onespin.log

puts "-I- Start Time: [clock format [clock seconds] -format {%Y-%m-%d %H:%M:%S}]"
puts "-I- Tool Version: [get_version]"

read_vhdl -version 2008 ../vhd_ko/*.vhd
read_vhdl -version 2008 ../psl/genbuf.psl

elaborate 

set_compile_option -undriven_value input
compile

set_reset_sequence -high RST
set_mode cc

check_consistency


set_mode mv

set_check_option -parallel local -local_processes 4

#puts "-I- Start Time Check Consistency: [clock format [clock seconds] -format {%Y-%m-%d %H:%M:%S}]"
#check_consistency -effort maximum
#puts "-I- End Time Check Consistency: [clock format [clock seconds] -format {%Y-%m-%d %H:%M:%S}]"

puts "-I- Start Time Check Assertion: [clock format [clock seconds] -format {%Y-%m-%d %H:%M:%S}]"
check_assertion [get_assertions]
puts "-I- End Time Check Assertion: [clock format [clock seconds] -format {%Y-%m-%d %H:%M:%S}]"

#compute_witness [get_assertions]
#puts "-I- End Time Compute Witness: [clock format [clock seconds] -format {%Y-%m-%d %H:%M:%S}]"
stop_message_log
