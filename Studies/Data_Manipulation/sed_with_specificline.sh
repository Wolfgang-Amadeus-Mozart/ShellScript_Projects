#!/bin/bash

#sed support specifien the line
#for example

echo "this is the first line" > sed_withline
echo "this is the second line" >> sed_withline

#both line matches the patter "line". but I'm specifying for sed to work only on line 2
sed '2 s/line/row/' sed_withline
