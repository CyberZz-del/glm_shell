#! /bin/bash

read -p "Please enter a valid GLM API:" VARIABLE

if [ $? -eq 0 ]; then
    echo "Your GLM API is $VARIABLE"
else
    echo "Illegal input."
fi

sed -i '12c\api_key="'$VARIABLE'"' ./chat

if [ $? -eq 0 ]; then
    echo "API replacement successful."
else
    echo "API replacement failed."
fi

chmod +x ./chat

if [ $? -eq 0 ]; then
    echo "Successfully granted script execution permissions."
else
    echo "Failed to grant execution permission to the script."
fi

sudo cp ./chat /usr/bin

if [ $? -eq 0 ]; then
    echo "Successfully copied script to /usr/bin."
else
    echo "Failed to copy script to /usr/bin."
fi