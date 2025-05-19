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
     
     if [ $? -eq 0 ]

      then
         echo " MYSQL install success"  

      else 

         echo "install fail"
         #exit 1
    fi