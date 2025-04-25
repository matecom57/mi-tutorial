#!/bin/bash

file=$1

echo ${file}

#sed -i 's/\.\.//g' ${file}

sed -i 's/Sysadmit/SYSADMIT/g' "${file}"


