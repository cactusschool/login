#!/bin/sh
git pull
login_process=`ps -ef | grep login-jwt | awk '$8=="java" {print $2}'`
echo $login_process
kill -9 $login_process
echo "Running application has been stopped. Starting the application again"
mvn clean install
#java -jar target/cactusschool-login-jwt-1.0.jar &