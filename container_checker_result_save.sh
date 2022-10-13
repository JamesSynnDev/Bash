#!/bin/bash

mkdir describe


function commands() {
    local val=$(cat ref/test.txt) # describe_commands.txt)
    echo "$val"
}

function cmmd() {
    i=1
    commands | while read line ; do
        num=`printf "%.2d" $i`
        id=$( echo "$line" | awk '{ print $4 }' )
        ((i+=1))
        echo "$($line)" > describe/$num"_descirbe_"$id.txt
        sleep 0.5
    done
}
cmmd | grep -w "container ID:" >> result.txt