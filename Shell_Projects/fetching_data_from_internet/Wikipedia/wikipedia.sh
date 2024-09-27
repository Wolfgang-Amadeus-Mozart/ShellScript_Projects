#!/bin/bash

#------------------------Description--------------------
#This scripts read some data from wikipedia pages


#------------------------VARIABLES--------------------
read -p "Enter the wiki page URL: " PAGE_URL
#COUNTER=0
#FILE="wiki_page.txt"
#------------------------Functions--------------------
function Curl_wikipage () {
	curl "$PAGE_URL" > wiki_page.txt
}

#Gets the title from wiki
#Had to check the wikipedia html patter first to figure where to search the title, so we are able to get the title from any wikipedia page
function Get_title () {
	echo "The page's title is: $(cat wiki_page.txt | grep "mw-page-title-main" | cut -d'>' -f3 | cut -d'<' -f1)"
}

function Get_lines() {
	local COUNTER=0
	local FILE="wiki_page.txt"
        while read -r line
        do
                COUNTER=$((COUNTER+1))
        done < "$FILE"
	echo "$COUNTER"
}

function Get_Images_Links() {
	echo $(cat wiki_page.txt | grep -o '<img src=.*')
}


#------------------------Execution--------------------
Curl_wikipage

echo "select an option
1 - For page's title
2 - Counting the file's line
3 - For Getting page image links
"

read -p "Enter a number: " NUM

case $NUM in
  1) 
    Get_title
    ;;
  2)
    Get_lines
    echo "$COUNTER"
    ;;
  3)
    Get_Images_Links
    ;;    
  *)
    echo "Invalid number!"
    ;;
esac
