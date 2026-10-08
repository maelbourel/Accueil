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
