#!/bin/bash

R=$\e[31m
G=$\e[32m
W=$\e[0m
Y=$\e[33m


if((UID!=0)); then
    echo -e "$R Need root access to install $W"
fi

