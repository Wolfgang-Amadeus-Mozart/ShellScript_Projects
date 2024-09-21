#!/bin/bash

#Regular expression can be used in the search patter of sed

echo "#Users with adminis creds" > user_access.txt
echo "Filipe" >> user_access.txt
echo "#Users with regular access" >> user_access.txt
echo "John" >> user_access.txt

#Now I will remove the comment line with sed
sed '/^#/d' user_access.txt

#^# mean anything that starts with #
