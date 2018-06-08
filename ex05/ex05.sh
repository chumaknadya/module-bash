#!bin/bash
str="0"
even_str="0"
odd_str="0"
arg=$1
shift
count=$#
while test ${#} -gt 0
do
  str+='+'$1
  if ! [[ $1 =~ [[:digit:]] ]]; then
    echo "Error.."
    exit 1
  fi
  if [ "$arg" == "-e" ]; then
     if [ $(($1 % 2)) == 0 ];then
       even_str+='+'$1
     fi
  fi
  if [ "$arg" == "-o" ]; then
    if [ $(($1 % 2)) != 0 ];then
         odd_str+='+'$1
    fi
  fi
  shift
done


case "$arg" in
  "-s")
    echo $str | bc
    ;;
  "-e")
    echo $even_str | bc
    ;;
  "-o")
    echo $odd_str | bc
    ;;
  "-m")
    echo "("$str")/"$count | bc
    ;;
  *)
    echo "Error.."
    exit 1
    ;;
esac
