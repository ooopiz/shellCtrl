#!/bin/bash

source $(cd "$(dirname "$0")"; pwd)/config

dbname="server_ctrl"
tablename="monitor_mem"

head="INSERT INTO $tablename VALUES ("
tail=");"

for addr in $listAddr; do
    values=`ssh dev@$addr -p $pport 'curl -s http://10.10.10.161/shellCtrl/monitor/mem.sh | sh'`
    sql=`echo "$head$values$tail"`
    echo "$sql" | mysql -h $mHost -u"$mUser" "$dbname"
done

