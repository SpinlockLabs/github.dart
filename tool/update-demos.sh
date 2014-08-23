#!/usr/bin/env bash

if [ -z ${1} ]
then
  echo "Usage: tool/update-demos.sh path/to/demos"
  exit 1
fi

rm -rf build

rm -rf ${1}

pub build example --mode=debug
cp -R build/web ${1}
