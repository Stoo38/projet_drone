###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name DONT_TOUCH -value "true" -instance modgen_adderblock -design rtl 

##################
# Clocks
##################
create_clock { i_clk } -domain ClockDomain0 -name i_clk -period 40.000000 -waveform { 0.000000 20.000000 } -design rtl 
