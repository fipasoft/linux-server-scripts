#!/bin/bash

for archivo in $(find /tmp/ -maxdepth 1 -name shutdown-*); do
    if [ $(($(date +%s)-${archivo#*-})) -gt 300 ]
    then
        rm $archivo
    else
        rm $archivo
        shutdown now
    fi
done
