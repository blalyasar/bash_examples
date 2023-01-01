#!/bin/bash

#programme to count nuber of arguments

echo "programme to count number of arguments"


#echo  "number of argument is $#"
if [ "$#" == "0" ]; then
    echo "no arguments"
else
    echo  "number of argument is $#"
    echo  "argument 1 :  is $1"

    # 1DEN FAZLA ARGUMANIN KONTROLU YOK 2. BOS ISE BOS YAZAR
    echo  "argument 2 :  is $2" 
fi
