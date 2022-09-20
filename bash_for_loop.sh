# dosyadan tek satır okuyup python dosyasına parametre ile verilip çıktıları yeni dosyaya yazma
for i in $(cat dosya.txt);do pythondosyasi.py $i ; done > yenidosya.txt

for i in `ls -1 *.sh`; do  echo $i; done
