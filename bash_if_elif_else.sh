#!/usr/bin/env bash
# bash_if_elif_else.sh param1
if [[ "${1}" == "" ]]; then
	echo "No shape was specified."

elif [[ "${1}" == "square" ]]; then
	echo "You specified 'square'."

elif [[ "${1}" == "circle" ]]; then
	echo "You specified 'circle'."

elif [[ "${1}" == "triangle" ]]; then
	"You specified 'triangle'." 
    
else
	echo "Unknown shape '${1}'."
    exit 1

fi
