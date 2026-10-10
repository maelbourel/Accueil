# Bandit 

## Bandit1

> mdp : 6y2kwnwK6grgvwvpvLaa2T1cpFEKOhNR 

## Bandit2

> mdp : PK8fYLZg2hnHSz83plBL1iEPKdD3QToB  

## Bandit3

> mdp : 7ZZ2LFrykP2zEyvBl4m3clcL7tGYJPME  

## Bandit4 

> mdp : xzTXq1rDJQVVAzdv5cHq1TQytTWufAMq 

Utilisation de la commande `file` : 

```bash
file ./*
```

## Bandit5 

> mdp : 6C7h9GD8M6ai5nr7wo1RonrzFjj9yIrG 

Utilisation de la commande `find` : 

```bash
find inhere/* -type f -size 1033c ! -executable
```

## Bandit6

> mdp : pXa26xhMWaC2SvDotA4r9EgZkulOeSBW  

Utilisation de la commande `find` : 

```bash
find /* -size 33c -user bandit7 -group bandit6
```

## Bandit 7  

> mdp : Bmnnvf82KzQlfxgAI2d1zYbr1u9pr3E3

Utilisation de la commande `grep` : 

```bash
grep "millionth" data.txt
```


## Bandit 8 

> mdp : VR1ljMayciFxbnUokuQmJFw6QC9VKtub 

Utilisation de la commande `sort` et `uniq`

```bash
sort data.txt | uniq -u
```

sort trie les lignes
uniq -u affiche seulement les lignes qui apparaissent une seule fois

## Bandit 9 

> mdp : EjmOSvuAu7sGAHqHVcBDPirRe9T03kxl  

Utilisation de la commande `strings` et `grep`

```bash
strings data.txt | grep ===
```

`strings` sert à extraire d'un fichier les suites de caractères lisible

## Bandit 10

> mdp : B0s2khmbT9u0geKuOoVGW3JZKhndE3BG

Utilisation de la commande `base64`  :

```bash
cat data.txt | base64 -d
```

`base64` sert à encoder ou décoder des données en Base64. ( -d pour décoder )


## Bandit 11 

> mdp : pYfOY6HwUsDj5rL9UvyhU7MCmv8vN5Ro

Utilisation de la commande `tr` :

```bash
cat data.txt | tr 'A-Z' 'N-ZA-M'| tr 'a-z' 'n-za-m'
```

`tr` sert à remplacer, supprimer ou transformer des caractères dans un texte, caractère par caractère.


## Bandit 12

> mdp : GROozWPO8QyN0mGrjUkID0WCYkZiQxrN

Utilisation des commandes `file` , `tar` , `gzip` , `bzip2` et `xxd`  :

| Commande | Utilité                                          | Commande pour décompresser   |
| -------- | ------------------------------------------------ | ---------------------------- |
| `file`   | Identifie le type d'un fichier.                  | —                            |
| `tar`    | Archive plusieurs fichiers dans un seul fichier. | `tar -xf fichier.tar`        |
| `gzip`   | Compresse un fichier au format `.gz`.            | `gunzip fichier.gz`          |
| `bzip2`  | Compresse un fichier au format `.bz2`.           | `bunzip2 fichier.bz2`        |
| `xxd`    | Convertit un fichier en hexdump et inversement.  | `xxd -r fichier.hex fichier` |



## Bandit 13 

> mdp : qQYQiHOBPR8zR61qxYqX45quvihF2uzk

Utilisation des commandes `scp` et `ssh` :  

```bash 
scp -P 2220 bandit13@bandit.labs.overthewire.org:/home/bandit13/sshkey.private /home/mael/Documents/ # On copie la clé ssh
ssh -i sshkey.private -p 2220 bandit14@bandit.labs.overthewire.org # On se connecte grace a la clé copié 
```

`scp` : permet de copier un fichier entre deux machines via SSH  
`ssh -i` : permet de se connecter à un serveur SSH en utilisant une clé privée spécifiée, plutôt qu’un mot de passe.

## Bandit 14 

> mdp : aaWecNkG4FhxJQxz07uiwzVP6bJiYS65

Utilisation de la commande `nc` : 

```bash
nc locahost 30000
# puis entrer le mdp
```
`nc` (Netcat) permet d’établir une connexion réseau à un hôte et un port pour envoyer ou recevoir des données


## Bandit 15 

> mdp : pbLYuZtTg4MgaqfJx8jbA9gKKGqM68A7

Utilisation de la commande `ncat` : 

```bash 
ncat --ssl localhost 30001
```

`ncat -ssl` permet d’établir une connexion réseau chiffrée avec TLS entre un client et un serveur compatible, afin de protéger les données échangées contre leur lecture en clair pendant le transit.

## Bandit 16 

> mdp : kS0Hf0u5HiXFwKMKFqXvPdOTNGGa0X8V

Utilisation de la commande `nmap` et `ncat` :

```bash 
nmap -p 31000-32000 localhost # on peut rajouter --script ssl-cert
ncat --ssl localhost 31790 # on tape le mdp de passe et on copie la clé ssh
```

## Bandit 17 

> mdp : la clé ssh récuperer avant

Utilisation de la commande `diff` : 

```bash 
diff passwords.old passwords.new
```

`diff` compare deux fichiers ligne par ligne et affiche les différences entre eux


## Bandit 18 

> mdp : OQxXZjELndr90zuhOTDYBEomI0SZITXI

Utilisation de `ssh -t` : 

```bash
ssh bandit18@bandit.labs.overthewire.org -p 2220 -t cat readme
```

`ssh -t` force l’allocation d’un terminal interactif sur la machine distante, ce qui permet d’exécuter des commandes nécessitant un terminal, notamment lorsque la configuration SSH ne fournit pas de shell interactif par défaut

## Bandit 19 

> mdp : KpsOfPkcP7i1FlIExk2QEjyt6dw8dxZI

Utilisation d'un programme `./` pour avoir les privilège nécessaire : 

```bash
./bandit20-do cat /etc/bandit_pass/bandit20
```


## Bandit 20 

> mdp : 4pIjcunZ0fK2vmp3IwfG8Vf7VhxD6pOA

Utilisation de deux terminal : 

Un premier qui se met en mode écoute : 

 ```bash
 nc -l -p 1234
 ```
Un deuxième qui lance le programme : 

```bash
./suconnect 1234
```

Après le premier peux envoyer le mdp pour comparaison et recevoir le nouveaux mdp 


## Bandit 21 

> mdp : bW9kBv5WC3P4yoDyf12LSdGuNz5ka6hY

Exploration de la base cron :

```bash
ls -l /etc/cron.d/
cat /etc/cron.d/cronjob_bandit22
cat /usr/bin/cronjob_bandit22.sh
cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
```

## Bandit 22 

> mdp : RYVux2rHEm9tiXHmLFzuR7Vhx6AZQMEz 

Il faut comprendre le script : 

```bash
#!/bin/bash

myname=$(whoami)
mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1)

echo "Copying passwordfile /etc/bandit_pass/$myname to /tmp/$mytarget"

cat /etc/bandit_pass/$myname > /tmp/$mytarget
```

et donc trouver le fichier temporaire avec le mdp : 

```bash
echo I am user bandit23 | md5sum | cut -d ' ' -f 1
cat /tmp/8ca319486bfbbc3663ea0fbe81326349
```


## Bandit 23 

> mdp : gKXDTAXnIz3OBxiPjRZ2uqutUlPZrBsw

On comprend en regardant le cron que toutes les minutes on peut exécuter un script dans un certain dossier avec les bonne autorisation alors on crée un script pour récupérer le mdp dans un nouveau dossier 

```bash
#!/bin/bash
cat /etc/bandit_pass/bandit24 > /tmp/mdpbandit24
```

Penser a rendre le script executable `chmod +x script.sh`


## Bandit 24 

> mdp : hVQMk3lJNsmQ7VF3ubyrNNBom7BOgVXv

creation d'un script [ici](/05-scripts/bash/Bandit_Bruteforce.sh)

## Bandit 25

> mdp : SoHfqMOEqIX2IYKVciZxvgpR9a2Djx4P

