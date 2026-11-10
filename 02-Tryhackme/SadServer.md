# Sad Server

## 1 "Saint John": what is writing to this log file?

> Description :   
> A developer created a testing program that is continuously writing to a log file /var/log/bad.log and filling up disk. You can check for example with `tail -f /var/log/bad.log`.

Solution :  

```bash
ps aux | grep bad # on recupere l'ID du processus du script badlog.py
kill id # On coupe le processus
```

## 2 "Saskatoon": counting IPs.

> Description :  
> There's a web server access log file at `/home/admin/access.log`. The file consists of one line per HTTP request, with the requester's IP address at the beginning of each line (first column).  
> 
> Find what's the IP address that has the most requests in this file (there's no tie; the IP is unique). Write the solution into a file `/home/admin/highestip.txt`. For example, if your solution is "1.2.3.4", you can do `echo "1.2.3.4" > /home/admin/highestip.txt`  
> 
> NOTE: The solution IP shows 482 times, ie grep -c -F -f highestip.txt access.log returns 482, if your solution has a different (lower) number you got the wrong most common IP.

Solution :  

```bash
awk '{print $1}' access.log | sort | uniq -c | sort -nr | head -n 1
```

Explication : 

`awk '{print $1}'` = permet d'extraire et d'afficher uniquement la première colonne de chaque ligne d'un fichier texte ou d'un fichier de logs.  

`sort` = permet de trier les lignes  

`uniq -c` = permet de détecter les lignes identique consécutives et de les compter  

`sort -nr` = Trier les résultat selon leur valeur numérique ( -n pour ordre décroissant )  

`head -n 1` = afficher que la première ligne  

