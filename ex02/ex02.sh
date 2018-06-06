#!/bin/bash
for i in $(echo $1 | tr ";" "\n");
do
  PATTERN=$(ls -R | grep $i)
  if [[ -n $PATTERN ]]
   then
     echo $PATTERN | tr " " "\n"
   else
      echo the searched PATH is unexisting
   fi
done
