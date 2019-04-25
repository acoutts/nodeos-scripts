#!/bin/bash

./stop.sh
echo -e "Starting Nodeos \n";

nodeos --data-dir /eos/eos-blocks/data --config-dir $(pwd)/config &> $(pwd)/logs/$(date +%Y-%m-%d_%H-%M-%S.log) & echo $! > $(pwd)/nodeos.pid
