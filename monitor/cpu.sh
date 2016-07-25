#!/bin/bash

datetime=`date +"%Y-%m-%d %H:%M:%S"`

ip=`/sbin/ifconfig  | grep 'inet addr:'| grep -v '127.0.0.1' | grep -v '10.10.10' | cut -d: -f2 | awk '{ print $1}'`

cpu=`top -b -n 1 | grep "Cpu(s)"`

cpuus=`echo "$cpu" | awk '{print $2}' | cut -d "%" -f 1`
cpusy=`echo "$cpu" | awk '{print $3}' | cut -d "%" -f 1`
cpuni=`echo "$cpu" | awk '{print $4}' | cut -d "%" -f 1`
cpuid=`echo "$cpu" | awk '{print $5}' | cut -d "%" -f 1`
cpuwa=`echo "$cpu" | awk '{print $6}' | cut -d "%" -f 1`
cpuhi=`echo "$cpu" | awk '{print $7}' | cut -d "%" -f 1`
cpusi=`echo "$cpu" | awk '{print $8}' | cut -d "%" -f 1`
cpust=`echo "$cpu" | awk '{print $9}' | cut -d "%" -f 1`

values=`echo "'0'", "'$ip'", "'$cpuus'", "'$cpusy'", "'$cpuni'", "'$cpuid'", "'$cpuwa'", "'$cpuhi'", "'$cpusi'", "'$cpust'", "'$datetime'"`

echo "$values"

