Write-Host "Bitte lasse diese Anwendung als Administrator laufen!! " -ForegroundColor green -BackgroundColor black 
$NewUser =  Read-Host("Kürzel des Users")
$FullName = Read-Host("Voller Name des Users") 
Write-Host("PW muss min. 12 Zeichen haben mit einem kleinbuchstaben, großbuchstaben und eine Zahl`nBitte ein Passwort eingeben ")
do {
    $password = Read-Host -AsSecureString   
}
while (
    $password.length -lt 12 -or $password -notmatch '[^a-zA-Z0-9]' 
) 
New-LocalUser $NewUser -Password $password -FullName $FullName -Description "Praktikanten Account"



Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

do { $vscode = 'Brauchst du VisualStudioCode?[J/N]'
$vscodersp = Read-Host -Prompt $vscode} 
until ("j","n" -contains $vscodersp)

if ($vscodersp -eq 'j') {
    choco install VisualStudioCode -y 
    Write-Host "VisualStudioCode ist jetzt installiert, wir empfehlen dir dein PC zu neustarten. " -ForegroundColor red -BackgroundColor black 
    } 

do { $MobaXterm = 'Brauchst du MobaXterm?[J/N]'
$MobaXt = Read-Host -Prompt $MobaXterm} 
until ("j","n" -contains $MobaXt)

if ($MobaXt -eq 'j') {
    choco install mobaxterm -y 
    Write-Host "MobaXterma ist jetzt installiert, wir empfehlen dir dein PC zu neustarten. " -ForegroundColor red -BackgroundColor black 
    }

do {$Python = 'Brauchst du Python?[J/N]'
$Pytn = Read-Host -Prompt $Python} 
until ("j","n" -contains $Pytn)

if ($Pytn -eq 'j') {
    choco install python -y 
    Write-Host "Python ist jetzt installiert, wir empfehlen dir dein PC zu neustarten. " -ForegroundColor red -BackgroundColor black 
    }

