IFS=$'\n';
for target_ip in `cat $input_file`
    do
        ping $target_ip -c 1 -W 1 > /dev/null
            if [ $? -eq '0' ]; then
                echo "Host: $target_ip is reachable"
            else
                echo "Host: $target_ip is NOT reachable"
            fi
    done
