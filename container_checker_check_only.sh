#!/bin/bash

mkdir results

function getCommands() {
    local val=$(cat describe_commands.txt)
    echo "$val"
}
function executeChecker() {
    getCommands | while read line ; do
        echo "$($line)"
        sleep 0.5
    done
}
executeChecker | grep -w "container ID:" >> results/result.txt
