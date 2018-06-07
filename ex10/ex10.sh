#!bin/bash
file=$1
if ! [ -f "$file" ];then
  echo ""
  exit 1
fi
while [ $# -gt 0 ]
do
    echo $(awk 'END { print NR }' $1) $1
    shift
done
