#!/bin/bash

function commands() {
    local val=$(cat describe_commands.txt)
    echo "$val"
}
function cmmd() {
    commands | while read line ; do
        echo "$($line)"
        sleep 0.5
    done
}
cmmd | grep -w "container ID:" >> result.txt