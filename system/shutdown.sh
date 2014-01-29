#!/bin/bash

for archivo in $(find /tmp/ -maxdepth 1 -name shutdown-*); do
    if [ $(($(date +%s)-${archivo#*-})) > 300 ]
    then
        rm $archivo
    else
        echo APAGAR
    fi
done
