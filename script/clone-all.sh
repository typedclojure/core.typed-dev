#!/bin/sh

while read line
do
  git clone git@github.com:$line.git
done < projects
