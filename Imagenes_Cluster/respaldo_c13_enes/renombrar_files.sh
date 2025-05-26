#!/bin/bash

dir=$(ls -1 *.png)

pref="respaldo"

k=1
for ss in $dir
do
  echo $ss
  ssn=${ss%.*}
  echo $ssn
  echo $k
  mv $ss $pref$k.png
  k=$((k+1))
done


