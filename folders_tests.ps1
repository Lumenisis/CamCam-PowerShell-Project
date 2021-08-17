# #################################### #
# Création automatique des répertoires #
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
$array = 'EXE','LOGS','SAV'
$counter = 0

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
            Set-Location C:\Temporaire
            New-Item -Name $array[$counter] -ItemType directory
            $counter = $counter+1
        }
}
