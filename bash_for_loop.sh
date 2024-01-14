# dosyadan tek satır okuyup python dosyasına parametre ile verilip çıktıları yeni dosyaya yazma
for i in $(cat dosya.txt);do pythondosyasi.py $i ; done > yenidosya.txt

for i in `ls -1 *.sh`; do  echo $i; done


# touch {1..200}.mp4

filenumber=0
for file in  *.mp4
do
  echo $file
  filenumber=$(($filenumber+1))
  mv $file "S1.E"$filenumber
done
