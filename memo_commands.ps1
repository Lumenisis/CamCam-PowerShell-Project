Get-ChildItem # lister le contenu d’un répertoire

Get-ChildItem D:\ -Include *.mp3 -Recurse # rechercher l’ensemble des fichiers MP3 sur D:\

Get-ChildItem C:\Windows | Where-Object {$_.Length -gt 50KB} # rechercher les objets ayant une taille supérieure à 50KB

Get-ChildItem C:\Windows | Where-Object {$_.LastWriteTime -gt ’01/01/2012′} # rechercher les objets ayant une date supérieure à celle-ci

Get-ChildItem -Force # lister le contenu d’un répertoire avec les fichiers cachés

Get-ChildItem Env # lister l’ensemble des variables d’environnement

Get-ChildItem Variable # lister l’ensemble des variables du système

Get-Alias # obtenir toute la liste des alias sur le système

Get-Alias dir # savoir quelle commande est exécutée lorsqu’on saisit l’alias

Set-Location C:\Windows # se placer dans le répertoire Windows

Get-Process # récupérer la liste des processus actifs

Get-Service # récupérer la liste des services du système

Get-Service Spooler # récupérer l’état d’un service en particulier

Get-Command # lister toutes les commandes PowerShell

Get-Command -CommandType Function # lister toutes les fonctions PowerShell

Get-Command -CommandType Cmdlet | Measure-Object # lister les commandelettes

Get-Help nom_commande # obtenir de l’aide sur une commande

Get-Help nom_commande -Full | More # obtenir l’aide complète sur une commande

Get-Command -verb Set # lister les commandes avec le verbe Set

Get-Command -Noun Item # lister les commandes avec le nom Item

Get-Location # connaître le répertoire courant

New-Item -ItemType directory -Name ‘TEST 1’ -Path C:\infonovice # création d’un répertoire à cet emplacement

New-Item -Name Testfile.txt -ItemType file -Value ‘Bienvenue sur le site Infonovice.fr’ -Path ‘C:\Infonovice\TEST 1’ # création d’un fichier à cet emplacement
