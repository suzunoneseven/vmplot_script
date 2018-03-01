#!/bin/bash

LOG_FILE="$1"
if [[ "${LOG_FILE}" == "" ]]; then
    LOG_FILE=vmstat.log
fi
watch --interval=10 "./vmplot_t -i ${LOG_FILE} -o result"
