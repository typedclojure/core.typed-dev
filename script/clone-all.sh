#!/bin/sh

set -e

while read line
do
  GROUPID=`dirname $line` 
  ARTIFACTID=`basename $line`
  git clone git@github.com:typedclojure/$ARTIFACTID.git --origin typedclojure
  cd $ARTIFACTID
  git branch --set-upstream-to typedclojure/master
  if [ "$GROUPID" == "org.clojure" ]; then
    git remote add clojure git@github.com:clojure/$ARTIFACTID.git
  fi
  cd ..
done < projects
