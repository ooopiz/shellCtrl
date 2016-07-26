#!/bin/bash

shellPath=$(cd "$(dirname "$0")"; pwd)

source $shellPath/config

for addr in $listAddr; do
    if [ -f "$shellPath/../iptables/$addr.sh" ]; then
        ssh dev@$addr -p $pport 'curl -s http://'$webHost'/shellCtrl/iptables/'$addr'.sh | sudo sh'
        echo "YES $addr.sh"
    else
        echo "File not found >>> $addr.sh"
    fi
done

