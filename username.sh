#! /bin/bash
# zip.sh
# author: Jonathan Burns

echo "Requirements for a username: "
echo "- only lower case letters,"
echo "- digits,"
echo "- underscore,"
echo "- must start with a lower case letter,"
echo "- contain 3 to 12 characters"

echo "Enter a valid username:"
read -r USERNAME
until echo "$USERNAME" | grep -E '^[a-z][a-z0-9_]{2,11}$'
do
	echo "Username Invalid"
	echo "Enter a valid username: "
	read -r USERNAME
done
echo "Thank you"
