#!/bin/bash

source ./config

dbname="server_ctrl"
tablename="monitor_disk"

head="INSERT INTO $tablename VALUES ("
tail=");"

for addr in $listAddr; do
    values=`ssh dev@$addr -p $pport 'curl -s http://10.10.10.161/shellCtrl/monitor/disk.sh | sh'`
    sql=`echo "$head$values$tail"`
    echo "$sql" | mysql -h $mHost -u"$mUser" "$dbname"
done

