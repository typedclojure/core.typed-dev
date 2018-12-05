#!/bin/sh

set -e

function clone() {
  GROUPID=`dirname $1` 
  ARTIFACTID=`basename $1`
  git clone git@github.com:typedclojure/$ARTIFACTID.git --origin typedclojure
  cd $ARTIFACTID
  git branch --set-upstream-to typedclojure/master
  if [ "$GROUPID" == "org.clojure" ]; then
    git remote add clojure git@github.com:clojure/$ARTIFACTID.git
  fi
  cd ..

}

export -f clone
cat projects | parallel clone {}
