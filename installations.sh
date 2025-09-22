#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "Use root access"
fi
