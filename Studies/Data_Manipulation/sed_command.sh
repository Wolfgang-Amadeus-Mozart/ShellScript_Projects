#!/bin/bash

#´sed´ is command that replaces tex

#for example

#
echo "Filipe is the assistant regional manager." > manager.txt 

#s/ stands for substitution, the word "assistant" it what will be replaced and the next string is what will be after replacement
sed 's/assistant/assistant to the/' manager.txt

#Sed is case is case sensite by default, if we want to replace ignoring the case, there is necessary flag

echo "Filipe is the ASSISTANT regional manager." > case_sensitivity_test.txt

				 #The flag "i" stands for ignorcasee
sed 's/assistant/assistant to the/i' case_sensitivity_test.txt


# The output will be the same for both per the case is being ignore


#additionally, sed only replaces the first match, if we want to replave every single math, the flag "g" is necessary
echo "Filipe is the assistant regional manager. Also, Filipe is the assistant site manager" > assistx2.txt
sed 's/assistant/assistant to the/g' assistx2.txt > assistmodified.txt #creating a new file from the output instead of just printing it on screen


#instead of creatin a new file, we can use the flag -i for inplace editing, so this will modify the existing file
echo "Filipe is the assistant regional manager. Also, Filipe is the assistant site manager" > assistx3.txt
sed -i.backup 's/assistant/assistant to the/g' assistx3.txt

