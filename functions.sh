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

dnf list installed python3

if(($? == 0)); then
   echo "Python already installed"
else
dnf install python3 -y
Status $? "Python"
fi

dnf list installed nginx

if (($?==0)); then
   echo "Nginx already installed"
else
dnf install nginx -y
Status $? "Nginx"
fi