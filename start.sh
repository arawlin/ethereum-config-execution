#!/bin/bash

DIR_DATA="/wallet/ethereum/test"
INTERVAL_MINE=3

$DIR_DATA/stop.sh
echo -e "Starting \n"

geth --vmdebug --gcmode "archive" --dev --dev.period $INTERVAL_MINE --config $DIR_DATA/config.toml --datadir $DIR_DATA >$DIR_DATA/stdout.txt 2>$DIR_DATA/stderr.txt &
#geth --dev --dev.period $INTERVAL_MINE --config $DIR_DATA/config.toml --datadir $DIR_DATA console
echo $! >$DIR_DATA/node.pid
