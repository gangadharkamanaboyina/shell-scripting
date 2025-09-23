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
       echo -e "$G $2 Installation Success $W"
    else
       echo -e "$R $2 Installation Failed $W"
    fi
}

for package in $@; do

   dnf list installed $package
     if(($?==0)); then
   dnf remove $package -y
   Validate $? "$package"
     else
       echo -e "$Y $package already installed $W"
     fi
done
