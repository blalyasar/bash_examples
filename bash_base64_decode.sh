#!/bin/bash
#Sample program to take input, encode to base64 and display on terminal

# echo "bilalyasar" | base64
# YmlsYWx5YXNhcgo=


echo "Type your password"
read pwd1
decoded_text=`echo 'YmlsYWx5YXNhcgo=' | base64 --decode`
if [[ $pwd1 == $decoded_text ]]
then
    echo "You are a valid user."
else
    echo "You are NOT a valid user."
fi
