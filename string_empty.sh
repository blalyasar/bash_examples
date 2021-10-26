myVar="hello"

if [[-z "$myVar"]]; then
    echo "myVar is empty"
else
    echo "myVar is not empty"
fi
