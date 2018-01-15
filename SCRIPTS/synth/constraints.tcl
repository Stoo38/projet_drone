#set CLK_PERIOD 20.00
#set CLK_SKEW 0.00
#set INPUT_DELAY 0.00
#set OUTPUT_DELAY 0.00

#Précise l'horloge du circuit
create_clock -name HCLK -period 2 -waveform {0.0 1.0} {i_hclk}	
#Indique de ne pas modifier plus tard le net d'horloge
set_dont_touch_network HCLK						
#Génère le skew maximal attendu									
set_clock_uncertainty 0.25 [get_clocks HCLK]						

set_input_delay 0.6 -max -clock HCLK [remove_from_collection [all_inputs] [get_ports i_hclk]]
set_output_delay 0.6 -max -clock HCLK [all_outputs]

