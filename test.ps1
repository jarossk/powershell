$userProfilePath = $env:USERPROFILE

$path = $env:USERPROFILE + "\AppData\Local\Jabra"

$sourceFilePath = "C:\Users\Jaras\Desktop\prom3.PNG"

if (-not (Test-Path $path -PathType Container)) {
    New-Item -ItemType Directory -Path $path | Out-Null
}

# Skopiowanie pliku do katalogu użytkownika
Copy-Item -Path $sourceFilePath -Destination $path -Force


# Docelowa ścieżka, gdzie chcesz skopiować plik (katalog użytkownika)
## $destinationPath = Join-Path $path "VPN"

Write-Host $path

