#!/bin/bash

read -p "Domínio: " dominio;

url=$(echo $dominio | httprobe | grep "https://");

xterm -e whatweb $dominio;

xterm -e ffuf -u $url"/FUZZ" -c -v -w /path/wordlist.txt &
