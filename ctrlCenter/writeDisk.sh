#!/bin/bash

source $(cd "$(dirname "$0")"; pwd)/config

dbname="server_ctrl"
tablename="monitor_disk"

head="INSERT INTO $tablename VALUES ("
tail=");"

for addr in $listAddr; do
    values=`ssh $lUser@$addr -p $pport 'curl -s http://$webHost/shellCtrl/monitor/disk.sh | sh'`
    sql=`echo "$head$values$tail"`
    echo "$sql" | mysql -h $dbHost -u"$dbUser" "$dbname"
done

