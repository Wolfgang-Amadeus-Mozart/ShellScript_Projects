#!/bin/bash
set ai


function demo(){
	echo "test"
}

demo


demo2(){
	echo "test2"
	return $TRUE
}

demo2

