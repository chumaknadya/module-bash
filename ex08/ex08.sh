#!bin/bash
file=$1
if [ $# -eq 0 ] || [ $# -gt 1 ];then
  echo "Too many(few) arguments"
  exit 1
fi
if ! [ -f "$file" ];then
  echo "Error.."
  exit 1
fi
var=""
var+=$(grep -o 0 $file | wc -l)
var+=" zeroes, "
var+=$(grep -o 1 $file | wc -l)
var+=" ones, "
var+=$(grep -o 2 $file | wc -l)
var+=" twoes, "
var+=$(grep -o 3 $file | wc -l)
var+=" threes, "
var+=$(grep -o 4 $file | wc -l)
var+=" fours, "
var+=$(grep -o 5 $file | wc -l)
var+=" fives, "
var+=$(grep -o 6 $file | wc -l)
var+=" sixs, "
var+=$(grep -o 7 $file | wc -l)
var+=" sevens, "
var+=$(grep -o 8 $file | wc -l)
var+=" eights, "
var+=$(grep -o 9 $file | wc -l)
var+=" nines"
echo $var

