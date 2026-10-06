#!/bin/bash

read -p "Enter a username: " USER
echo ""
read -s -p  "Enter a password: " PASSWORD
echo ""
echo "Credentials captured for $USER (password length: ${#PASSWORD})"
