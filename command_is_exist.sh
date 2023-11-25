#!/bin/bash

command -v curl > /dev/null 2>&1 || { echo >&2 "Command not installed. ";  }
command -v curlNot > /dev/null 2>&1 || { echo >&2 "Command is not installed.";  }
# if you can exit
# command -v curl > /dev/null 2>&1 || { echo >&2 "Command is not installed."; exit 1; }
