#!bin/bash
if [ "$#" == 2 ];
then
  echo $2 | cut -d"/" -f 2
  grep  -n $1 $2 | cut --delimiter=':' -f 1
else
 exit 1
fi
