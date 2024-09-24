#!/bin/bash

echo "deleting a line" > line_deleting.txt
echo "This line will be deleted" >> line_deleting.txt

#Using the flag d which is stands for "delete" in this scenario
sed '/deleted/d' line_deleting.txt


#The second line will be deleted because it's the only line that containg the word "deleted"
# The deleted line won't Be shown in the output, but will still remain in the original file
