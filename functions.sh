#!/bin/bash

if ((UID != 0)); then
   echo "Use root privilages"
   exit 1
fi

dnf install mysql -y

Status(){
if (($? != 0)); then
   echo "Installation failed"
   exit 1
else
   echo "Installation Success"
fi
}

dnf install python3 -y

Status()