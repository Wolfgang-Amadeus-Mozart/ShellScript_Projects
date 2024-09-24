#!/usr/bin/env bash

#Array with classical music composers
COMPOSERS=("Ludwig van Beethoven" "Wolfgang Amadeus Mozart" "Johann Sebastian Bach" "Frédéric Chopin" "Pyotr Ilyich Tchaikovsky" "Antonio Vivaldi" "Franz Schubert" "Claude Debussy" "Johannes Brahms" "Giuseppe Verdi")

#Shows each item from the composer list
for composer in "${COMPOSERS[@]}"
    do 
        echo "$composer"
done

echo "============================="
echo "Array lenght: ${#COMPOSERS[@]}"

echo "============================"
echo "Appending items on array"
echo "============================"

COMPOSERS+=("Richard Wagner" "Franz Liszt" "Igor Stravinsky" "George Frideric Handel")

#Showing the names again
for composer in "${COMPOSERS[@]}"
    do 
        echo "$composer"
done
