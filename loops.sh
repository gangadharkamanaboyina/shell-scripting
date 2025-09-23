#!/bin/bash

R="\e[31m"
G="\e[32m"
W="\e[0m"
Y="\e[33m"


if((UID!=0)); then
    echo -e "$R Need root access to install $W"
    exit 1
fi

dnf list installed nginx
if(($?!=0)); then
  dnf install nginx
else
   echo "$Y Nginx already installed $W"
fi