#!/bin/bash

# UID=$(id -u)

if  (($UID != 0)); then
   echo "Use root access" 
   exit 1
fi

dnf install mysql -y

if (($? == 0)); then
   echo "Successfully Installed MySql"
   exit 0
else
    echo "MySql Installation Failed"
    exit 1
fi
