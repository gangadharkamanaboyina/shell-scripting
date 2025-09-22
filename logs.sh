#!/bin/bash

if ((UID != 0)); then
   echo "Need root privilages to run the script"
fi

Status(){
    if (($1==0)); then
        echo "$2 installed successfully"
    else
        echo "$2 installation failed"
    fi
}
dnf list installed nginx

   if(($?==0)); then
       echo "Nginx already installed"
    else
       dnf install nginx -y
       Status $? "Nginx"
    fi
