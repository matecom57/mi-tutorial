#!/bin/bash

dir=$(ls -1 *.md)

for ss in $dir
do
  dd="$ss"
  dd=$(echo $dd | sed -e 's/á/a/g')
  dd=$(echo $dd | sed -e 's/é/e/g')
  dd=$(echo $dd | sed -e 's/í/i/g')
  dd=$(echo $dd | sed -e 's/ó/o/g')
  dd=$(echo $dd | sed -e 's/ú/u/g')
  dd=$(echo $dd | sed -e 's/://g')
  dd=$(echo $dd | sed -e 's/(//g')
  dd=$(echo $dd | sed -e 's/)//g')
  dd=$(echo $dd | sed -e 's/,//g') 
  echo $dd
done

