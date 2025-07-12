#!/bin/bash

file1="$1"

echo "$file1"

sed -i 's/\. \.//g' "$file1"

