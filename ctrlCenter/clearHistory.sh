#!/bin/bash

source ./config

for addr in $listAddr; do
    ssh dev@$addr -p $pport 'echo "" > .bash_history'
done

