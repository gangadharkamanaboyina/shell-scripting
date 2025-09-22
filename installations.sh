#!/bin/bash

# UID=$(id -u)

if  (($UID != 0)); then
   echo "Use root access" 
   break
fi

dnf install mysql -y

if (($? == 0)); then
   echo "Successfully Installed MySql"
else
    echo "MySql Installation Failed"
fi
