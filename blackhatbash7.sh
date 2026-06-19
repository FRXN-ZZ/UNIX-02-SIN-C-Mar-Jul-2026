#!/usr/bin/bin/env bash

touch example_file1 example_file2 example_file3

grep "35.237.4.214" log.txt

grep "35.237.4.214\|13.66.139.0" log.txt

grep -e "35.237.4.214" -e "13.66.139.0" log.txt

ps | grep TTY
ps | grep -i tty

grep -v "35.237.4.214" log.txt
grep -o "35.237.4.214" log.txt

awk '{print $1}' log.txt
awk '{print $1,$2,$3}' log.txt
awk '{print $1,$NF}' log.txt

cat << 'EOF' > log.csv
hola1,chao1         
hola2,chao2      
hola3,chao3     
EOF

head log.txt
awk 'NR < 10' log.txt

#...................................
grep "42.236.10.117" log.txt
#Searches for and displays every line in `log.txt` that contains the IP address `35.237.4.214`.
awk '{print $7}' log.txt
#Searches for lines in `log.txt` that contain either `35.237.4.214` OR `13.66.139.0` using an escaped pipe (`\|`) as an OR operator.
grep "42.236.10.117" log.txt | awk '{print $7}'
#Performs the exact same search as Command 2 (IP 1 OR IP 2), but uses multiple `-e` flags for a cleaner and more readable syntax.

sed 's/Mozilla/Godzilla/g' log.txt
sed 's/Mozilla/Godzilla/g' log.txt > newlog.txt
sed 's/ //g' log.txt
sed '1d' log.txt
sed '$d' log.txt
sed '5,7d' log.txt
sed -n '2,15 p' log.txt
sed -i '1d' log.txt