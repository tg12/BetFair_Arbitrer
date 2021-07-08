#!/bin/bash
MYPWD=${PWD} 
_now=$(date +"%Y_%m_%d_%Hh%M")
_directory="$MYPWD/logs/output_$_now"
mkdir $_directory
USERNAME=$(whoami)
python3 $MYPWD/main.py $_directory $USERNAME &>$_directory/stdouterr.txt
