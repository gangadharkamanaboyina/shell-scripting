#!/bin/bash

if ((UID != 0)); then
   echo "Use root privilages"
   exit 1
fi

Status(){
if (($? != 0)); then
   echo "Installation failed"
   exit 1
else
   echo "Installation Success"
fi
}

dnf install mysql -y

Status

dnf install pyton3 -y

Status