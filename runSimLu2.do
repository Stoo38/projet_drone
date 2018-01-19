suppress 3829
set StdArithNoWarnings 1
add wave -position insertpoint sim:/tbench/barycentre/*
add wave -position insertpoint sim:/tbench/duv/*
run -all
