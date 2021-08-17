# ############################################## #
# Récupération de saisie et création utilisateur #
# ############################################## #

Do
{
    # Nom et prénom
    $surname = Read-Host 'Saisissez le nom de l utilisateur'
    $firstname = Read-Host 'Saisissez le prenom de l utilisateur'
    
    # Mot de passe
    $password = Read-Host 'Saisissez son mot de passe'
    $secure_password = ConvertTo-SecureString $password -AsPlainText -Force

    # Variables de noms
    $fullname1 = $firstname+' '+$surname
    $fullname2 = $firstname[0]+'.'+$surname

    # Création utilisateur
    New-ADUser -Name $fullname1 -Surname $surname -GivenName $firstname -SamAccountName $fullname2 -UserPrincipalName $fullname2 -AccountPassword $secure_password -CannotChangePassword $false -ChangePasswordAtLogon $true -Enabled $true

    # Proposition
    $continuer = Read-Host 'Voulez-vous continuer ? O/N'
}
While ($continuer -eq 'O')
