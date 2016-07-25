#!/bin/bash

source ./config

for addr in $listAddr; do
    ssh dev@$addr -p $pport 'sudo ntpdate time.stdtime.gov.tw'
done

