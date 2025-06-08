#!/bin/bash

DIR_DATA="/wallet/ethereum/execution"

$DIR_DATA/stop.sh
echo -e "Starting \n"

../reth/target/maxperf/reth node --config $DIR_DATA/config.toml --datadir $DIR_DATA --http --ws --auth-ipc --auth-ipc.path $DIR_DATA/reth_engine_api.ipc --authrpc.jwtsecret ../jwt.hex --log.file.directory $DIR_DATA/logs > /dev/null 2>&1 &
echo $! >$DIR_DATA/node.pid

