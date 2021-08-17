#!/bin/bash
build_version=`cat VERSION`
git checkout -b release-v$build_version
echo > VERSION
echo $build_version > VERSION
cat VERSION
git add .
git commit -m "Update release version"
git push origin release-v$build_version
git checkout main
