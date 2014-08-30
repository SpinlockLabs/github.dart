#!/usr/bin/env bash
n=0
LAST_EXIT=0
until [ $n -ge 5 ]
do
  echo "$ ${@}"
  ${@}
  LAST_EXIT=${?}
  [ ${LAST_EXIT} == 0 ] && break
  n=$[$n+1]
  sleep 2
done

exit ${LAST_EXIT}