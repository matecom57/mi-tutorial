#!/bin/bash

dir=$(ls -1)

tss=""
for ss in $dir
do
  echo $ss
#  dd=$(file $ss)
  suf=${ss:(-2)}
  if [ "$suf" == "md" ]; then
    cat $ss >> sal.txt
  else
    tss=$tss"-"$suf
  fi
#  cat $ss >> sal.txt
done

echo $tss

