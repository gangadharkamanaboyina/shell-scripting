#!/bin/bash

if ((UID != 0)); then
   echo "Use root privilages"
   exit 1
fi

Status(){
if (($1 != 0)); then
   echo -e "\e[31m $2 Installation failed \e[0m"
   exit 1
else
   echo -e "\e[32m $2 Installation Success \e[0m"
fi
}

dnf list installed mysql

if (($? == 0)); then

   echo "MySql already installed"
else
dnf install mysql -y
Status $? "MySql"
fi

dnf install python3 -y

Status $? "Python"

dnf install nginx -y

Status $? "Nginx"