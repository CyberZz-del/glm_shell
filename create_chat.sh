#! /bin/bash

read -p "Please enter a valid GLM API:" VARIABLE

if [ $? -eq 0 ]; then
    echo -e "\033[34mYour GLM API is $VARIABLE\033[0m"
else
    echo -e "\033[31mIllegal input.\033[0m"
fi

sed -i '12c\api_key="'$VARIABLE'"' ./chat

if [ $? -eq 0 ]; then
    echo -e "\033[34mAPI replacement successful.\033[0m"
else
    echo -e "\033[31mAPI replacement failed.\033[0m"
fi

chmod +x ./chat

if [ $? -eq 0 ]; then
    echo -e "\033[34mSuccessfully granted script execution permissions.\033[0m"
else
    echo -e "\033[31mFailed to grant execution permission to the script.\033[0m"
fi

sudo cp ./chat /usr/bin

if [ $? -eq 0 ]; then
    echo -e "\033[34mSuccessfully copied script to /usr/bin.\033[0m"
else
    echo -e "\033[31mFailed to copy script to /usr/bin.\033[0m"
fi

pip install zhipuai 

if [ $? -eq 0 ]; then
    echo -e "\033[34mSuccessfully install zhipuai.\033[0m"
else
    echo -e "\033[31mFailed to install zhipuai.\033[0m"
fi

pip install colorama

if [ $? -eq 0 ]; then
    echo -e "\033[34mSuccessfully install colorama.\033[0m"
else
    echo -e "\033[31mFailed to install colorama.\033[0m"
fi

pip install PyJWT

if [ $? -eq 0 ]; then
    echo -e "\033[34mSuccessfully install PyJWT.\033[0m"
else
    echo -e "\033[31mFailed to install PyJWT.\033[0m"
fi

pip install requests

if [ $? -eq 0 ]; then
    echo -e "\033[34mSuccessfully install requests.\033[0m"
else
    echo -e "\033[31mFailed to install requests.\033[0m"
fi
