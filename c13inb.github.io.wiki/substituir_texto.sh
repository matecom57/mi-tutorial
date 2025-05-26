#!/bin/bash

dd="/á/a//é/e/í/i /á/a//é/e/í/i /á/a//é/e/í/i ab:-dd"

dd=$(echo $dd | sed -e 's/á/a/g')

dd=$(echo $dd | sed -e 's/é/e/g')
dd=$(echo $dd | sed -e 's/í/i/g')
dd=$(echo $dd | sed -e 's/ó/o/g')
dd=$(echo $dd | sed -e 's/ú/u/g')
dd=$(echo $dd | sed -e 's/://g')
echo $dd



