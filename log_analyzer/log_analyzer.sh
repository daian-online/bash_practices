#!/usr/bin/bash

find_log_type() {
	log_type=$1
	if [ "$log_type" = "ERROR" ]; then
                error_count=$(( error_count + 1 ))

        elif [ "$log_type" = "DEBUG" ]; then
                debug_count=$(( debug_count + 1 ))

        elif [ "$log_type" = "WARNING" ]; then
                warning_count=$(( warning_count + 1 ))

        elif [ "$log_type" = "INFO" ]; then 
                info_count=$(( info_count + 1 ))
        fi
}
read -p "Enter your log: " logs

error_count=0
info_count=0
warning_count=0
debug_count=0

for log_type in $logs; do
	find_log_type "$log_type"
done
echo "ERROR: '$error_count'"
echo "WARNING: '$warning_count'"
echo "DEBUG: '$debug_count'"
echo "INFO: '$info_count'"
