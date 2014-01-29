#!/bin/bash

for archivo in $(find /tmp/ -maxdepth 1 -name shutdown-*); do
    rm $archivo
    if [ $(($(date +%s)-${archivo#*-})) -lt 300 ]
    then
        shutdown now
    fi
done
