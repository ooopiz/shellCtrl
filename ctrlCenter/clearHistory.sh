#!/bin/bash

source $(cd "$(dirname "$0")"; pwd)/config

for addr in $listAddr; do
    ssh $lUser1@$addr -p $pport 'echo "" > .bash_history'
done

