#!/bin/bash

function print_hello1(){
echo 'Hello'
}

print_hello2() {
        echo "helloo"
}

print_hello3(){
        echo Hello ${1}
}

print_hello_return(){
        echo "some"
        return 72
}
print_hello_global(){
        name="John"
}
print_hello_local(){
        local name="local John"
        echo "${name}"
}

print_hello1
print_hello2
print_hello3 Bilal
print_hello3 Bash
print_hello_return
echo ${?}

name="Alen"
print_hello_global
echo "${name}"

print_hello_local
echo "${name}



