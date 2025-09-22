#!/bin/bash


if ((UID != 0)); then
   echo -e "\e[31m Need root privilages to run the script \e[0m"
   exit 1
fi

Log_Folder="mkdir /var/log/shell-scripting"
Log_File="$Log_Folder/install.log"

Status(){
    if (($1==0)); then
        echo -e "\e[32m $2 installed successfully \e[0m"
    else
        echo -e "\e[31m $2 installation failed \e[0m"
    fi
}
dnf list installed nginx $>$Log_File

   if(($?==0)); then
       echo -e " \e[33m Nginx already installed  \e[0m"
    else
       dnf install nginx -y
       Status $? "Nginx"
    fi
