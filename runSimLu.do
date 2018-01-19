suppress 3829
set StdArithNoWarnings 1
add wave -position insertpoint sim:/tbench/top/*
add wave -position insertpoint sim:/tbench/top/position1/*
run -all
