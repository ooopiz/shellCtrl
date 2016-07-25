#!/bin/bash

datetime=`date +"%Y-%m-%d %H:%M:%S"`

ip=`/sbin/ifconfig  | grep 'inet addr:'| grep -v '127.0.0.1' | grep -v '10.10.10' | cut -d: -f2 | awk '{ print $1}'`

disk=`df -m | grep sda1`

total=`echo "$disk" | awk '{print $2}'`
used=`echo "$disk" | awk '{print $3}'`
available=`echo "$disk" | awk '{print $4}'`
useper=`echo "$disk" | awk '{print $5}' | cut -d "%" -f 1`

values=`echo "'0'", "'$ip'", "'$total'", "'$used'", "'$available'", "'$useper'", "'$datetime'"`

echo "$values"

