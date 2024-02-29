
# ls
# '001-compiling-sfml.cpp?token=asdfghjklşl'    '002-window-02-event.cpp?token=qwertyuıop'   '002-window-04-opengl.cpp?token=qwertyuıop'
# '002-window-01-window.cpp?token=asdfghjklş'  '002-window-03-inputs.cpp?token=zxcvbnmö'   rename-remove-token.sh



for filename in *; do
    newname=$(echo "$filename" | cut -f 1 -d '?')
    echo $name
    mv $filename $newname
done

# ls
# 001-compiling-sfml.cpp    002-window-02-event.cpp   002-window-04-opengl.cpp
# 002-window-01-window.cpp  002-window-03-inputs.cpp  rename-remove-token.sh
