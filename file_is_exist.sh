# root altında DENEME dizini yok...  if'e duser
# -f file olur
directory="/DENEME"
if [[ ! -d "$directory" ]]
then
    echo "$directory not exists on your filesystem."
    echo "$directory Dizin mevcut değil"
fi
