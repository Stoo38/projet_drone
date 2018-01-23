#!/bin/bash
M_DATE=`date +%Y%m%d_%H%M`

cd ~/projet_drone/CONFIG/
source config_ASIC

cd ~/projet_drone/SYNTH_DC/work
dc_shell -f ../scripts/run_synthesis.tcl > ../log/report.log

grep Error ../log/report.log	> ../log/errors.log
grep Warning ../log/report.log	> ../log/warnings.log

cd ..

cp -R log log_${M_DATE}
cp -R results results_${M_DATE}
