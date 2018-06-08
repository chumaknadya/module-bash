if [ "$#" -eq 4 ];
then
  first_arg=$1
  shift
  for arg in $@; do
    echo "$arg" $(grep -o $arg $first_arg | wc -l)
    grep -n $arg $first_arg | cut --delimiter=':' -f 1
  done
else
  exit 1
fi

