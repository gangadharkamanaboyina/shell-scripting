#!/bin/bash

# UID=$(id -u)

if  (($UID != 0)); then
   echo "Use root access"
else 
    dnf install mysql -y
fi
