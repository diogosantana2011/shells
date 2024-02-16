#!/bin/bash
SYSTEM_DIR=System/Applications

cd ~
cd ../..
cd $SYSTEM_DIR
pwd
open Calculator.app
pgrep -l "Calculator"
sleep 0.5 # wait for calculator to become visible
killall "Calculator" # Kill running process