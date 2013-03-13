#!/bin/bash
# Script Author: Landon Mayo (aPices)
# E-Mail landon.mayo[at]OWASP[dot]org
# License: GNU General Public Ver. 2 (the ``GPL``).
# Version 1.9

# This script sends an email containing a new Nessus Homefeed Activation Code without going to their site.
# 

echo "\n"
echo "Hello, "$USER". This script will send automatically send a Nessus Activation Code to your e-mail\n\n"

echo "Enter your first name and press [ENTER]: "
read fname
echo "Enter your last name and press [ENTER]: "
read lname
echo "Enter the email where you want your license sent to and press [ENTER]: "
read email

curl -d "first_name=$fname&last_name=$lname&email=$email&Accept=Agree&type=homefeed&submit=Register" http://www.tenable.com/products/nessus/nessus-homefeed

echo -n "Done!"

