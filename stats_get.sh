#!/bin/bash

clear
echo -n "" > vmstat.log
vmstat -n -S m 1 | awk '{print strftime("%Y-%m-%d_%H:%M:%S"), $0; fflush()}' | tee -a vmstat.log
