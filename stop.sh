#!/bin/bash

DIR_DATA="."

if [ -f $DIR_DATA"/node.pid" ]; then
	pid=`cat $DIR_DATA"/node.pid"`
	echo $pid
	kill $pid
	

	echo -ne "Stoping Node"

    while true; do
        [ ! -d "/proc/$pid/fd" ] && break
        echo -ne "."
        sleep 1
    done
	rm -r $DIR_DATA"/node.pid"
	
	DATE=$(date -d "now" +'%Y_%m_%d-%H_%M')
    if [ ! -d $DIR_DATA/logs ]; then
        mkdir $DIR_DATA/logs
    fi
    tar -pczf $DIR_DATA/logs/stderr-$DATE.txt.tar.gz stderr.txt stdout.txt

    echo -ne "\rNode Stopped.    \n"
fi
