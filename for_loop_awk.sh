text.txt

#10.10.15.15:3260,1 ASD, QWE, 123
#10.10.15.15:3260,1 ASD, QWE, 123
#10.10.15.15:3260,1 ASD, QWE, 123
#10.10.15.15:3260,1 ASD, QWE, 123
#10.10.15.15:3260,1 ASD, QWE, 123
#10.10.15.15:3260,1 ASD, QWE, 123
#10.10.15.15:3260,1 ASD, QWE, 123

awk 'BEGIN {FS=","} {print$1}' text.txt > atext.txt



for i in $(cat atext.txt);do  ikomut -  $i   ; done
