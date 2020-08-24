Invoke-WebRequest -Uri https://aka.ms/wslubuntu2004 -OutFile C:\tmp\Ubuntu.appx
Add-AppxPackage C:\tmp\Ubuntu.appx
Invoke-WebRequest -Uri https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -OutFile C:\tmp\wsl_update_x64.msi
C:\tmp\wsl_update_x64.msi
wsl --set-default-version 2
wsl --set-version Ubuntu 2

