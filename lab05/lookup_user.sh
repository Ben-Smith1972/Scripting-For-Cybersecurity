#!/bin/bash

read -p  "Enter a username to look up: " TARGET_USER
read -p "Enter a department to look up: " DEPARTMENT
read -p "Enter their role: " ROLE
read -p "Enter their status: " STATUS
echo "Searching the account list for: $TARGET_USER & $DEPARTMENT"
grep "$TARGET_USER" intel/users.csv | grep "$DEPARTMENT" intel/users.csv | grep "$ROLE" intel/users.csv | grep "$STATUS" intel/users.csv
