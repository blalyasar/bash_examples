#!/bin/bash

#programme to count nuber of arguments

echo "programme to count number of arguments"


#echo  "number of argument is $#"
if [ "$#" == "0" ]; then
    echo "no arguments"
else
    echo  "number of argument is $#"
fi
