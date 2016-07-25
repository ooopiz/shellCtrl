#!/bin/bash

source $(cd "$(dirname "$0")"; pwd)/config

for addr in $listAddr; do
    ssh dev@$addr -p $pport 'echo "" > .bash_history'
done

