#!/bin/bash

mkdir describes results

function getCommands() {
    local val=$(cat describe_commands.txt) # describe_commands.txt
    echo "$val"
}

function executeChecker() {
    i=1
    getCommands | while read line ; do
        num=`printf "%.2d" $i`
        id=$( echo "$line" | awk '{ print $4 }' )
        ((i+=1))
        echo "$($line)" > describes/$num"_descirbe_"$id.txt
        sleep 0.5
    done
}
executeChecker | grep -w "container ID:" >> results/result.txt
