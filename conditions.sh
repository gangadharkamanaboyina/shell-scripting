#!/bin/bash

NUM=$1

if [ $NUM -gt 10 ]; then
   echo "$NUM is greater than 10"
elif [ $NUM -eq 10 ]; then
   echo "$NUM is equal to 10"
else 
   echo "$NUM is less than 10"
fi