#!/bin/bash

echo "enter your name:"
read name
align=False
if [[ -n $name ]]
then
  echo "enter your age:"
  read age
  if [[ $age -eq 0 ]]
  then
    align=False
  else
    align=True
  fi
else
  aling=False
fi
#echo $align
while [[ $align == True ]]
do
#echo 1
  if [[ $age -le 16 ]]
  then
    echo "${name}, your group is child"
  elif [[ $age -gt 25 ]]
  then
    echo "${name}, your group is adult"
  else
    echo "${name}, your group is youth"
  fi
  echo "enter your name:"
  read name
  align=False
  if [[ -n $name ]]
  then
    echo "enter your age:"
    read age
    if [[ $age -eq 0 ]]
    then
      align=False
    else
      align=True
    fi
  else
    aling=False
  fi
done
echo "bye"