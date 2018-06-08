#!bin/bash
file="resourses/surnames.txt"
count=0
arg=$1
re='Q-Chem'
if ! [[ $arg ]] || [[ $arg -eq 0 ]]; then
  exit 1
fi
while IFS= read line
do
  if [[ $count == $arg ]]; then
    break
  fi
  let count+=1
  if !  [[ $line =~ "$re" ]]; then
    echo $line | sed 's/\.//' | sed 's/\-//'
  fi
done <"$file"

