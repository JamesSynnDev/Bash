#!/bin/bash

function commands() {
    local val=$(cat file.txt)
    echo "$val"
}
function cmmd() {
    i=1
    commands | while read line ; do
        id=$( echo "$line" | awk '{ print $2 }' )
        echo "$($line)" > "tt_"$id"_"$i.txt
        ((i+=1))
    done
}
cmmd | grep -w "hi:" >> result.txt