#!/bin/bash
while [[ 1 -eq 1 ]]
do
    read oper1 oper2 oper3
    if [[ $oper1 == "exit" ]]
    then
      echo "bye"
      exit
    elif [[ $oper2 == "+" ]]
    then
      let "answer = ${oper1}+${oper3}"
      echo $answer
    elif [[ $oper2 == "-" ]]
    then
      let "answer = $oper1 - $oper3"
      echo $answer
    elif [[ $oper2 == "*" ]]
    then
      let "answer = $oper1 * $oper3"
      echo $answer
    elif [[ $oper2 == "/" ]]
    then
      let "answer = $oper1 / $oper3"
      echo $answer
    elif [[ $oper2 == "%" ]]
    then
      let "answer = $oper1 % $oper3"
      echo $answer
    elif [[ $oper2 == "**" ]]
    then
      let "answer = $oper1 ** $oper3"
      echo $answer
    else
      echo "error"
      exit
    fi
done