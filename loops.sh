#!/bin/bash

R="\e[31m"
G="\e[32m"
W="\e[0m"
Y="\e[33m"


if((UID!=0)); then
    echo -e "$R Need root access to install $W"
    exit 1
fi

Validate(){

    if(($1==0)); then
       echo -e "$G Installation Success $W"
    else
       echo -e "$R Installation Failed $W"
    fi
}

dnf list installed $2
if(($?!=0)); then
  dnf install $2 -y
  Validate $? "nginx"
else
   echo -e "$Y Nginx already installed $W"
fi

