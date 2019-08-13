#!/bin/bash

DIR_DATA="/wallet/ethereum/data"

if [ -f $DIR_DATA"/node.pid" ]; then
	pid=`cat $DIR_DATA"/node.pid"`
	echo $pid

    if [ ! -d "/proc/$pid/fd" ]; then
        echo "$pid is gonne, so start up"
        $DIR_DATA/start.sh
    fi
fi

echo "check finished"
