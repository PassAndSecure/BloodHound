# selection dossier
function Select-FolderDialog {
    Add-Type -AssemblyName System.Windows.Forms
    $folderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog
    $folderBrowser.ShowDialog() | Out-Null
    return $folderBrowser.SelectedPath
}

# URL dépôt GitHub
$baseUrl = "https://github.com/PassAndSecure/BloodHound/archive/refs/heads/main.zip"

# selection de dossier
$destinationFolder = Select-FolderDialog

if ($destinationFolder -ne "") {
    # Créer dossier AzureHound 
    $azureHoundFolder = Join-Path -Path $destinationFolder -ChildPath "AzureHound"
    if (-Not (Test-Path -Path $azureHoundFolder)) {
        New-Item -ItemType Directory -Path $azureHoundFolder -Force
    }

    # Télécharger zip dépôt GitHub
    $zipFilePath = Join-Path -Path $destinationFolder -ChildPath "BloodHound-main.zip"
    Write-Host "Téléchargement du dépôt GitHub..."
    Invoke-WebRequest -Uri $baseUrl -OutFile $zipFilePath

    # Extraire zip dans dossier destination
    Write-Host "Extraction des fichiers..."
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipFilePath, $destinationFolder)

    # Déplacer dossiers AzureHound extraits vers dossier destination
    $extractedFolderPath = Join-Path -Path $destinationFolder -ChildPath "BloodHound-main/AzureHound"
    Move-Item -Path "$extractedFolderPath/*" -Destination $azureHoundFolder -Force

    # Delete zip et dossier extrait
    Remove-Item -Path $zipFilePath -Force
    Remove-Item -Path (Join-Path -Path $destinationFolder -ChildPath "BloodHound-main") -Recurse -Force

    Write-Host "Téléchargement et extraction terminés ! Les fichiers ont été téléchargés dans $azureHoundFolder."
} else {
    Write-Host "Aucun dossier sélectionné. Opération annulée."
}
