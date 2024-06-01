# Selection dossier
function Select-FolderDialog {
    Add-Type -AssemblyName System.Windows.Forms
    $folderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog
    $folderBrowser.ShowDialog() | Out-Null
    return $folderBrowser.SelectedPath
}

# URL github
$baseUrl = "https://raw.githubusercontent.com/PassAndSecure/BloodHound/main/AzureHound/"

# fichiers a télécharger
$files = @(
    "AzureHound.ps1",
    "AzureHound.exe",
    "AzureHound.exe.config",
    "AzureHound.pdb",
    "System.Console.dll",
    "System.Diagnostics.Tracing.dll",
    "System.Net.Http.dll"
)

$destinationFolder = Select-FolderDialog

if ($destinationFolder -ne "") {
    # Créer dossier AzureHound dans dossier sélectionné
    $azureHoundFolder = Join-Path -Path $destinationFolder -ChildPath "AzureHound"
    if (-Not (Test-Path -Path $azureHoundFolder)) {
        New-Item -ItemType Directory -Path $azureHoundFolder -Force
    }

    # Télécharge fichiers dans AzureHound
    foreach ($file in $files) {
        $url = $baseUrl + $file
        $output = Join-Path -Path $azureHoundFolder -ChildPath $file
        Write-Host "Téléchargement de $file..."
        Invoke-WebRequest -Uri $url -OutFile $output
    }

    Write-Host "Téléchargement terminé ! Les fichiers ont été téléchargés dans $azureHoundFolder."
} else {
    Write-Host "Aucun dossier sélectionné. Opération annulée."
}
