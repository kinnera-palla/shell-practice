#!/bin/bash

USERID=$(id -u)

if [ "$USERID" -ne 0 ]
then 
    echo "invalid user: run with root access"
    exit 1 #give other than 0-127

    else

       echo "running wiht root user"
       fi

     dnf install msyl -y  
     