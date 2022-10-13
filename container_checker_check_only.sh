#!/bin/bash

function commands() {
    local val=$(cat file.txt)
    echo "$val"
}
function cmmd() {
    commands | while read line ; do
        echo "$($line)"
    done
}
cmmd | grep -w "container ID:" >> result.txt