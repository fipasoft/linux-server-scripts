#!/bin/bash

for archivo in $(find /tmp/ -maxdepth 1 -name shutdown-*); do
    echo $(($(date +%s)-${archivo#*-}))
done
