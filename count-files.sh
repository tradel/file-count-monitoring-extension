#! /bin/bash

while true
do
	count=`find /var/tmp -type f | wc -l | sed -e "s/ s*//g"`
	echo "name=Custom Metrics|File Count|count,value=$count,aggregator=OBSERVATION,time-rollup=CURRENT,cluster-rollup=COLLECTIVE"
	sleep 5
done

