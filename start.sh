#!/bin/bash

./stop.sh
echo -e "Starting Nodeos \n";

ulimit -n 65535
ulimit -s 64000

cpufreq-set -c 0 -d 4.2GHz -g performance
nodeos --data-dir $(pwd)/data --config-dir $(pwd)/config &> $(pwd)/logs/$(date +%Y-%m-%d_%H-%M-%S.log) & echo $! > $(pwd)/nodeos.pid
taskset -p -c 0 $(cat nodeos.pid)
