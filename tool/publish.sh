#!/usr/bin/env bash
# Publishes a GitHub.dart release
if [ ${1} != "--keep-version" ]
then
  ./tool/build.dart publish
fi

VERSION=`grep 'version:' pubspec.yaml | sed 's/version: //'`
echo Releasing ${VERSION}
git add .
git tag v${VERSION}
git commit -m "v${VERSION}"
git push --tags origin master
