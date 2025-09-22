#!/bin/bash

USERID=$(id -u)

if [ (($USERID != 0)) ]; then
   echo "Use root access"
fi
