#!/bin/bash
_now=$(date +"%Y_%m_%d_%Hh%M")
_directory="$HOME/adabet/logs/output_$_now"
mkdir $_directory
USERNAME=$(whoami)
proxychains python3 $HOME/adabet/main.py $_directory $USERNAME &>$_directory/stdouterr.txt
