#!/bin/bash

gcd() # takes 2 agruments
{
  m=$1
  n=$2
  if [[ $n -eq $m ]]
  then
    echo "GCD is ${n}"
    return
  elif [[ m -gt n ]]
  then
    let "x = $m-$n"
    gcd $x $n
  else
    let "y = $n-$m"
    gcd $m $y
  fi
}

read m n
while [[ 1 -eq 1 ]]
do
  if [[ -z $m ]]
  then
    echo "bye"
    exit
  else
    gcd $m $n
  fi
  read m n
done