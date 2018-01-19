#!/bin/sh

source ../../CONFIG/config_VERIF


echo running spyglass verifications ...

sg_shell -tcl run_Stooglass.tcl > ../REPORTS/Spy.log

exit

#grep  Error ../REPORTS/Spy.log
#grep  Warning ../REPORTS/Spy.log
