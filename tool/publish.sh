#!/usr/bin/env bash
# Publishes an irc.dart release
./tool/build.dart publish
VERSION=`grep 'version:' pubspec.yaml | sed 's/version: //'`
echo Releasing ${VERSION}
git add .
git tag v${VERSION}
git commit -m "v${VERSION}"
git push --tags origin master
