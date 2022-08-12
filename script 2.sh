#!/bin/bash

n=$1
case $n in
  0)
    echo "No students";;
  1)
    echo "${n} student";;
  [2-4])
    echo "${n} students";;
  *)
    echo "A lot of students";;
esac