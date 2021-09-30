
#!/bin/bash 
# call
#-i -n -m -e
while getopts ":i:n:m:e:" arg; do
  case $arg in
    i) ID=$OPTARG;;
    n) Name=$OPTARG;;
    m) Manufacturing_date=$OPTARG;;
    e) Expire_date=$OPTARG;;
  esac
done
echo -e "\n$ID  $Name   $Manufacturing_date $Expire_date\n"
