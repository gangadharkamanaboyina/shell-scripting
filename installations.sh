#!/bin/bash

# UID=$(id -u)

if  (($UID != 0)); then
   echo "Use root access" 
   exit 1
fi

dnf install mysql -y

if (($? == 0)); then
   echo "Successfully Installed MySql"
else
    echo "MySql Installation Failed"
    exit 1
fi

dnf install nginx -y

if (($? == 0)); then
   echo "Successfully Installed Nginx"
else
    echo "Nginx Installation Failed"
    exit 1
fi

dnf install python3 -y

if (($? == 0)); then
   echo "Successfully Installed Python"
else
    echo "Python Installation Failed"
    exit 1
fi
