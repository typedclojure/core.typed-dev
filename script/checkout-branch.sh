#!/bin/sh

BRANCH=$1
PREFIX="../branches"

if [ -z "$BRANCH" ]; then
  echo "Must provide branch name"
  exit 1;
fi

while read line
do
  NAME=`basename ${line}`
  cd ${NAME}
  git worktree add -b ${BRANCH} ${PREFIX}/${BRANCH}/${NAME}
  cd ..
done < projects
