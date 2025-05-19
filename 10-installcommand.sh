#!/bin/bash

USERID=$(id -u)

if [ $USERIS -ne 0 
then 
    echo "invalid user: run with root access"

    else

       echo "running wiht root user"

     dnf install msyl -y  