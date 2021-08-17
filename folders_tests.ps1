# #################################### #
# Création automatique des répertoires #
#    Copie automatique des fichiers    #
# #################################### #

$vraiTemp = 'Le répertoire Temporaire existe'
$fauxTemp = 'Le répertoire Temporaire n existe pas : création de celui-ci'
$vrai = 'Le répertoire existe déjà dans Temporaire'
$faux = 'Le répertoire n existe pas dans Temporaire : création de celui-ci'

# Test et création du dossier Temporaire
if (Test-Path -Path C:\Temporaire)
{
    $vraiTemp
}
    else
    {
        $fauxTemp
        Set-Location C:\
        New-Item -Name "Temporaire" -ItemType directory
    }

# Création d'un tableau
$array = 'exe','logs','sav'
$counter = 0

# Création d'une fonction
Function Dossier
{
    Set-Location C:\Temporaire
    New-Item -Name $array[$counter] -ItemType directory
}

# Test et création des sous-dossiers
While ($counter -lt $array.Length)
{
    if (Test-Path -Path C:\Temporaire\$array[$counter])
    {
       $vrai 
    }
        else
        {
            $faux
            Dossier
            $counter = $counter+1
        }
}

# Copie des fichiers dans les sous-dossiers
Copy-Item -Path C:\Windows\*.exe -Destination C:\Temporaire\exe\
Copy-Item -Path C:\Windows\*.logs -Destination C:\Temporaire\logs\
Set-Location C:\Windows\
Get-ChildItem -Attributes !Directory | Where-Object {$_.Length -le 10KB } | Copy-Item -Destination C:\Temporaire\sav
