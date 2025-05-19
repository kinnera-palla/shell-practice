#!/bin/bash

USERID=$(id -u)

if [ "$USERID" -ne 0 ]
then 
    echo "invalid user: run with root access"
    exit 1 #give other than 0-127

    else

       echo "running wiht root user"
       fi
      dnf list installed mysql

      if [ $? -ne 0 ]
      then

       echo " mysql is not installed"

         dnf install mysql -y  
     
     if [ $? -eq 0 ]

      then
         echo " MYSQL install success"  

      else 

         echo "install fail"
         exit 1

       else 

         echo "mysql already installed"

         f1
     
    fi