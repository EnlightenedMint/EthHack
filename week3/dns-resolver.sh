#!/bin/bash
ip=$1
dns=$2
for i in $(seq 0 255); do
	ip=$1.$i
	for ip in $ip; do
		for dns in $dns; do
			nslookup $ip $dns | grep "name"
		done
	done
done
