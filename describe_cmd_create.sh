#!/bin/bash

kubectl config get-contexts > contexts.txt
kubectl get pods --all-namespaces > namespaces.txt
cat namespaces.txt | awk '{print "k describe pod",$2,"-n", $1}' > describe_commands.txt