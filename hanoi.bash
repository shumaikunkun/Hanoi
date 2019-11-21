hanoi(){
  if [ $1 -gt 1 ]; then hanoi `expr $1 - 1` $2 $4 $3; fi
  echo "${2}=>${3}"
  if [ $1 -gt 1 ]; then hanoi `expr $1 - 1` $4 $3 $2; fi
}

read n
hanoi $n a b c
