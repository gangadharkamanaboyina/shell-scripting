#!/bin/bash

R="\e[31m"
G="\e[32m"
W="\e[0m"
Y="\e[33m"

Log_Folder="/var/log/shell-prac"
File_Name=$( echo $0 | cut -d "." -f1 )
Log_File="$Log_Folder/$File_Name.log"

mkdir -p $Log_Folder

if((UID!=0)); then
    echo -e "$R Need root access to install $W"
    exit 1
fi

Validate(){

    if(($1==0)); then
       echo -e "$G $2 Installation Success $W"
    else
       echo -e "$R $2 Installation Failed $W"
       exit 1
    fi
}

for package in $@; do

   dnf list installed $package &>>$File_Name
     if(($?!=0)); then
   dnf install $package -y &>>$File_Name
   Validate $? "$package"
     else
       echo -e "$Y $package already installed $W" 
     fi
done
