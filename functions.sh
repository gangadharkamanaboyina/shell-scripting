#!/bin/bash

if ((UID != 0)); then
   echo "Use root privilages"
   exit 1
fi

dnf install mysql -y

if (($? != 0)); then
   echo "Installation failed"
   exit 1
else
   echo "Installation Success"
fi