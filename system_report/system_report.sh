#!/usr/bin/bash

echo "========================="
echo "SYSTEM REPORT"
echo "========================="

echo "Hostname:"
hostname
echo

echo "Current user:"
whoami
echo

echo "Current date:"
date +"%Y-%m-%d"
echo

echo "Kernel:"
uname
echo

echo "IP address:"
hostname -I | awk '{print $1}'
echo

echo "Disk usage:"
df -h /
echo

echo "Memory usage:"
free -h
echo

echo "Logged-in users:"
who
echo

echo "Top 5 largest files in HOME:"
find "$HOME" -type f -exec du -h {} + 2>/dev/null | sort -hr | head -5
echo

echo "Top 5 running processes by memory:"
ps -eo pid,user,%mem,comm --sort=-%mem | head -6