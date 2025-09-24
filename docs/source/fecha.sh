#!/bin/bash

date=$(date '+%Y-%m-%d %H:%M:%S')
tiempo=$(date +%H:%M:%S)

dia=$(date '+M%mD%dA%y')

echo ${dia}_${tiempo} > fecha_ultima.dat

