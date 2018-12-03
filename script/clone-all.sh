#!/bin/sh

set -e

while read line
do
  ORG=`dirname $line` 
  REPO=`basename $line`
  git clone git@github.com:typedclojure/$REPO.git --origin typedclojure
  cd $REPO
  git branch --set-upstream-to typedclojure/master
  if [ "$ORG" == "clojure" ]; then
    git remote add clojure git@github.com:clojure/$REPO.git
  fi
  cd ..
done < projects
