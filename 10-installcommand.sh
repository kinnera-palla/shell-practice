#!/bin/bash

USERID=$(id -u)

if [ $USERID-ne 0 ]
then 
    echo "invalid user: run with root access"

    else

       echo "running wiht root user"
       fi

     dnf install msyl -y  
     