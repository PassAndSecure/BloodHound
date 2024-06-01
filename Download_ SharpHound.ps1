# Selection dossier
function Select-FolderDialog {
    Add-Type -AssemblyName System.Windows.Forms
    $folderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog
    $folderBrowser.ShowDialog() | Out-Null
    return $folderBrowser.SelectedPath
}

# URL github
$baseUrl = "https://raw.githubusercontent.com/PassAndSecure/BloodHound/main/SharpHound/"

# fichiers a télécharger
$files = @(
    "SharpHound.ps1",
    "SharpHound.exe",
    "SharpHound.exe.config",
    "SharpHound.pdb",
    "System.Console.dll",
    "System.Diagnostics.Tracing.dll",
    "System.Net.Http.dll"
)

$destinationFolder = Select-FolderDialog

if ($destinationFolder -ne "") {
    # Créer dossier SharpHound dans dossier sélectionné
    $sharpHoundFolder = Join-Path -Path $destinationFolder -ChildPath "SharpHound"
    if (-Not (Test-Path -Path $sharpHoundFolder)) {
        New-Item -ItemType Directory -Path $sharpHoundFolder -Force
    }

    # Télécharge fichiers dans SharpHound
    foreach ($file in $files) {
        $url = $baseUrl + $file
        $output = Join-Path -Path $sharpHoundFolder -ChildPath $file
        Write-Host "Téléchargement de $file..."
        Invoke-WebRequest -Uri $url -OutFile $output
    }

    Write-Host "Téléchargement terminé ! Les fichiers ont été téléchargés dans $sharpHoundFolder."
} else {
    Write-Host "Aucun dossier sélectionné. Opération annulée."
}
