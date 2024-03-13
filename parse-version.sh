#!/usr/bin/env bash

# Derivated from 
# https://github.com/WinCisky/Build-SFML-For-Android-On-Linux/blob/master/check-requirements.sh

readonly PYTHON_VERSION=$(python3 -V | sed 's/Python //g')

readonly PYTHON_MAJOR=$(echo ${PYTHON_VERSION} | sed -r 's/^([0-9]+).*$/\1/')
readonly PYTHON_MINOR=$(echo ${PYTHON_VERSION} | sed -r 's/^[0-9]+\.([0-9]+).*$/\1/')
readonly PYTHON_PATCH=$(echo ${PYTHON_VERSION} | sed -r 's/^[0-9]+\.[0-9]+\.([0-9]+).*$/\1/')

echo $PYTHON_MAJOR
echo $PYTHON_MINOR
echo $PYTHON_PATCH