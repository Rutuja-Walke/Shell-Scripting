#!/bin/bash
clear
echo ""
echo "--------------------"
echo ""
echo "Unique System ID"
echo ""
echo "Your ID is:: "
md5sum /etc/passwd | cut -c 1-6
echo ""
echo "--------------------"
echo ""