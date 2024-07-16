#!/bin/bash

function first_function(){
        msg1=$1
        msg2=$2
        echo "First function ${msg1}, ${msg2}"
        second_function "${msg1}" "${msg2}"

}


function second_function(){
        val1=$1
        val2=$2
        echo "second function: ${val2}, ${val1}"
}
first_function "Hello" "Linux"
