#!/bin/bash



i=2
while read line || [ -n "$line" ] ; do
  NAME_SPACES=$( awk '{print $1}')
  ((i+=1))
done < ref/ns.txt

echo "${NAME_SPACES}" > ref/name_spaces.txt



i=2
while read line || [ -n "$line" ] ; do
  PODS=$( awk '{print $2}')
  ((i+=1))
done < ref/ns.txt
  
echo "${PODS}" > ref/pods.txt

#  NAME_SPACE=$( awk '{print $2}')
#  echo "k describe pod ${POD} -n ${NAME_SPACE}"

