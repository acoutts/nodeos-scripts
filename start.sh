#!/bin/bash

./stop.sh
echo -e "Starting Nodeos \n";

ulimit -n 65535
ulimit -s 64000

nodeos --data-dir $(pwd)/data --config-dir $(pwd)/config &> $(pwd)/logs/$(date +%Y-%m-%d_%H-%M-%S.log) & echo $! > $(pwd)/nodeos.pid