#!/bin/bash

# cat regexFile.log |awk '{print $3}' ); do # Before script delimiter awk
for local_file_path in $(cat regexFile.log); do
  echo $local_file_path

  # https://stackoverflow.com/questions/9725897/bash-script-use-cut-command-at-variable-and-store-result-at-another-variable
  filename=$(echo "$local_file_path" | cut -d'/' -f4-6)

  echo "$filename"

  response=$(curl -I \
    --header 'X-IS-Behavior: FAILOVER_ENABLED_SYNC_HEALING_ENABLED' \
    https://example.com/$filename 2>&1)
  # https://example.com/file.txt 2>&1) #orig

  echo $response
  status_code=$(echo "$response" | grep HTTP | awk '{print $2}')

  # echo $status_code
  # sleep 2
  # # size=${#status_code}
  # # echo $size

  # [ $status_code -eq 200 ] && echo "uygun"
  if [ $status_code -eq 200 ]; then
    echo "200 OK"
    rm $local_file_path
  else
    echo "None"
  fi
done
