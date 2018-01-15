#!/bin/sh

source ../../CONFIG/config_VERIF


echo running spyglass verifications ...

sg_shell -tcl run_Spyglass.tcl > ../REPORTS/Spy.log


grep  Error ../REPORTS/Spy.log
grep  Warning ../REPORTS/Spy.log