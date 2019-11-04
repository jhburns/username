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
read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z][a-z0-9_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username."
	echo "Enter a valid username: "
	read USERNAME
done
echo "Thank you"
