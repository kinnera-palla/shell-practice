#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shellscript.logs"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo " script started executing at: $(date)" | tee -a $LOG_FILE


if [ $USERID -ne 0 ]
then
    echo  -e " $R ERROR:: Please run this script with root access $N" | tee -a $LOG_FILE
    exit 1 #give other than 0 upto 127
else
    echo "You are running with root access" | tee -a $LOG_FILE
fi

# validate functions takes input as exit status, what command they tried to install
VALIDATE(){
    if [ $1 -eq 0 ]
    then
        echo "Installing $2 is ... $G SUCCESS $N" | tee -a $LOG_FILE
    else
        echo "Installing $2 is ... $R FAILURE $N" | tee -a $LOG_FILE
        exit 1
    fi
}

dnf list installed mysql
if [ $? -ne 0 ]
then
    echo "MySQL is not installed... going to install it" | tee -a $LOG_FILE
    dnf install mysql -y
    VALIDATE $? "MySQL"
else
    echo "MySQL is already installed...Nothing to do"
fi

dnf list installed python3
if [ $? -ne 0 ]
then
    echo "python3 is not installed... going to install it" | tee -a $LOG_FILE
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo "python3 is already installed...Nothing to do"
fi

dnf list installed nginx
if [ $? -ne 0 ]
then
    echo "nginx is not installed... going to install it"
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo "nginx is already installed...Nothing to do"
fi
