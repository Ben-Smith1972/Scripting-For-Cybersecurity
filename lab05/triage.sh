#!/bin/bash

CASE_DIR="case"
REPORT="triage-report-auto.txt"

read -p "Enter analyst name: " ANALYST
read -p "Enter case reference: " CASE_REF

echo "Evidence Triage Report" > "$REPORT"
echo "Analyst: $ANALYST" >> "$REPORT"
echo "Case Reference: $CASE_REF" >> "$REPORT"
echo "Date: $(date)" >> "$REPORT"
echo >> "$REPORT"

TOTAL_FILES=$(find "$CASE_DIR" -type f | wc - l)
TOTAL_DIR=$(find "$CASE_DIR" -type d | wc - l)
PYTHON_FILES=$(find "$CASE_DIR" -type f -name "*.py" | wc - l)
SHELL_SCRIPTS=$(find "$CASE_DIR" -type f -name "*sh" | wc - l)
LOG_FILES=$(find "$CASE_DIR" -type f -name "*.log" | wc - l)
CONFIG_FILES=$(find "$CASE_DIR" -type f -name "*.conf" | wc - l)
EMPTY_FILES=$(find "$CASE_DIR" -type -size 0 | wc - l)
ARCHIVES=$(find "CASE_DIR" -type f -name "*.zip" | wc - l)

echo "Total Files: $TOTAL_FILES" >> "$REPORT"
echo "Total Directorie: $TOTAL_DIRS" >> "$REPORT"
echo "Python Files: $PYTHON_FILES" >> "$REPORT"
echo "Shell Scripts: $SHELL_SCRIPTS" >> "$REPORT"
echo "Log Files: $LOG_FILES" >> "$REPORT"
echo "Configuration Files: $CONFIG_FILES" >> "$REPORT"
echo "Empty Files: $EMPTY_FILES" >> "$REPORT"
echo "Archives: $ARCHIVES" >> "$REPORT"

echo >> "$REPORT"
echo "Files containing 'admin': " >>"$REPORT"
grep -rl "admin" "CASE_DIR" >> "$REPORT"

echo >> "$REPORT"
echo "Detected File Types: " >> "$REPORT"
find "$CASE_DIR" -type f  >> "$REPORT"

SCRIPTS=$(PYTHON_FILES + SHELL_SCRIPTS))
echo >> "$REPORT"
echo "Scripts (Python + shell): $SCRIPTS" >>"$REPORTS"
