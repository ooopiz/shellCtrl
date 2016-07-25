#!/bin/bash

datetime=`date +"%Y-%m-%d %H:%M:%S"`

ip=`/sbin/ifconfig  | grep 'inet addr:'| grep -v '127.0.0.1' | grep -v '10.10.10' | cut -d: -f2 | awk '{ print $1}'`

cpu=`free -m | grep Mem`

total=`echo "$cpu" | awk '{print $2}'`
used=`echo "$cpu" | awk '{print $3}'`
free=`echo "$cpu" | awk '{print $4}'`
shared=`echo "$cpu" | awk '{print $5}'`
buffers=`echo "$cpu" | awk '{print $6}'`
cached=`echo "$cpu" | awk '{print $7}'`

values=`echo "'0'", "'$ip'", "'$total'", "'$used'", "'$free'", "'$shared'", "'$buffers'", "'$cached'", "'$datetime'"`

echo "$values"

