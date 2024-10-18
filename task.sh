#!/bin/bash


read -p "Enter username: " username
read -sp "Enter password: " password
echo ""

if [[ "$username" == "admin" && "$password" == "testyantra123" ]]; then
    echo "Authentication Successful"
elif [[ "$username" == "Developer" && "$password" == "Fireflink@123" ]]; then
    echo "Authentication Successful"
else
    echo "Authentication Unsuccessful"
    exit 1
fi


read -p "Enter salary: " salary

if (( salary < 15000 )); then
    echo "No tax"
elif (( salary == 15000 )); then
    echo "2% tax"
elif (( salary <= 30000 )); then
    echo "5% tax"
else
    echo "10% tax"
fi


read -p "Enter age: " age

if (( age < 13 )); then
    echo "Child"
elif (( age >= 13 && age <= 19 )); then
    echo "Teenager"
elif (( age > 60 )); then
    echo "Oldage"
else
    echo "Adult"
fi
