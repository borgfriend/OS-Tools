REM Install Chocolatey
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

REM Basics
choco install -y googlechrome 
choco pin add -n=googlechrome

choco install -y 7zip 
choco install -y greenshot 
choco install -y foxitreader
choco install -y enpass

REM Multimedia 
choco install -y vlc 
choco install -y aimp 
choco install -y steam

REM DEV-Tools
choco install -y visualstudiocode 
choco pin add -n=visualstudiocode
choco install -y git
choco install -y nodejs