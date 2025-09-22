#!/bin/bash

# UID=$(id -u)

if [ $UID -ne 0 ]; then
   echo "Use root access"
else 
    echo "Proceed with Installation"
fi
