#!/bin/bash
if [[ ! $1 ]]; then
    echo "Please input file argument"
    exit
fi
datenow=$(date +"%Y%m%d")
timenow=$(date +"%H%M%S")
if [[ ! -d /var/log/archived_logs ]]; then
    mkdir /var/log/archived_logs;
fi
tar -czf /var/log/archived_logs/test_${datenow}_${timenow}.tar.gz $1