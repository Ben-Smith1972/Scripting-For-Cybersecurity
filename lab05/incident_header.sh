#!/bin/bash

read -p "Enter an incident reference number: " REF
read -p "Enter the reporting analyst: " ANAYLYST
read -p "Enter a one-line summary: " SUMMARY

SEVERITY="UNCLASSIFIED"

echo "INCIDENT REPORT"
echo "----------------"
echo "Reference	: $REF"
echo "Analyst	: $ANALYST"
echo "Summary	: $SUMMARY"
echo "Severity	: $SEVERITY"
echo "Logged at	: $(date)"
