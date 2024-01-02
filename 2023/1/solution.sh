#!/bin/bash

cat input.txt |
sed 's/[a-z]*//g' |
awk '{print substr($0, 1, 1) substr($0, length($0)-1, 1)}' |
awk '{s+=$1}END{print s}'