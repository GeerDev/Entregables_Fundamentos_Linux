#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: Que me gusta la bash!!!!"
  exit 1
fi

mkdir -p foo/{dummy,empty}
touch foo/dummy/{file1.txt,file2.txt}
echo "$1" > foo/dummy/file1.txt

cat foo/dummy/file1.txt > foo/dummy/file2.txt
cd foo/dummy/
mv file2.txt ../empty/