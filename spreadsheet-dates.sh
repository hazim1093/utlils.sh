#!/bin/bash
#############################
# Ref: https://blog.sleeplessbeastie.eu/2013/03/24/how-to-get-number-of-days-in-a-month-using-shell-commands/
#############################

MONTH=$1
default_year=2019
if [ -z ${MONTH} ];
then
    echo "Usage: $(basename $0) <Month (Required)> <Year (Optional, default: $default_year)>"
    exit -1;
fi

YEAR=${2:-$default_year}

DAYS_IN_MONTH=$(cal ${MONTH} ${YEAR} | awk 'NF {DAYS = $NF}; END {print DAYS}')
for day in `seq 1 ${DAYS_IN_MONTH}`;
do
    echo "=DATE(${YEAR}; ${MONTH}; ${day})"
done

