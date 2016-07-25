#!/bin/bash

source $(cd "$(dirname "$0")"; pwd)/config

for addr in $listAddr; do
    ssh dev@$addr -p $pport 'sudo ntpdate time.stdtime.gov.tw'
done

