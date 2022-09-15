#!/bin/bash

DIR_DATA="/wallet/ethereum/execution"

$DIR_DATA/stop.sh
echo -e "Starting \n"

geth --config $DIR_DATA/config.toml >$DIR_DATA/stdout.txt 2>$DIR_DATA/stderr.txt &
echo $! >$DIR_DATA/node.pid
