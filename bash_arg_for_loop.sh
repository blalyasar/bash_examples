echo "name='$0'"
echo "Nargs="$#
for i in $(seq $#); do
    echo -n "arg_num=$i, "
    eval "echo arg=\'\$${i}\'"
done
echo "args='$@'"
for arg in "$@"; do echo "arg='${arg}'"; done