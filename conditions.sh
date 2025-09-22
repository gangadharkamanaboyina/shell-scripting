#!/bin/bash

echo "Enter the Number"
read NUM

if (( NUM % 2 == 0 )); then
   echo "$NUM is even"
else 
   echo "$NUM is odd"
fi
