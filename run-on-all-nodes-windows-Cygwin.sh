#!/bin/bash

command=$@

set -x
for host in 27 28 29; do
    export DOCKER_HOST=tcp://192.170.0.$host:2376
    eval $command
done
