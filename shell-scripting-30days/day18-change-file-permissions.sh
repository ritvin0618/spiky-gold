#!/bin/bash

#  File to change
FILE="/home/vineeth/Dev/spiky-gold-practice/my-file-permission.txt"

#  Change file permissions to 760 (rw-r--r--)
echo " Changing permissions of $FILE to 760..."
chmod 760 "$FILE"

#  Change owner to user 'vineeth' and group 'daemon'
echo " Changing owner of $FILE to vineeth:daemon..."
sudo chown vineeth:daemon "$FILE"

#  Now change permissions to 777 (rwxrwxrwx)
#echo " Changing permissions of $FILE to 777 (full access)..."
#chmod 777 "$FILE"

echo " Permission and ownership changes completed."

