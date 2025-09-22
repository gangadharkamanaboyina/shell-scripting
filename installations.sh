#!/bin/bash

UID=$(id -u)

if [ $UID -ne 0 ]; then

echo "Use root access"

fi
