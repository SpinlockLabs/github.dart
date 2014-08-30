#!/usr/bin/env bash
n=0
until [ $n -ge 5 ]
do
  echo "$ ${@}"
  ${@}
  [ $? -eq 0 ] && break
  n=$[$n+1]
  sleep 2
done