#!/bin/bash

if ((UID != 0)); then
   echo "Use root privilages"
   exit 1
fi

Status(){
if (($1 != 0)); then
   echo " $2 Installation failed"
   exit 1
else
   echo "$2 Installation Success"
fi
}

dnf install mysql -y

Status $? "MySql"

dnf install python3 -y

Status $? "Python"

dnf install nginx -y

Status $? "Nginx"