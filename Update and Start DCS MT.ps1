$OpenBetaPath = Get-ItemPropertyValue -Path 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DCS World OpenBeta_is1\' -Name InstallLocation

#Check for Updates
Start-Process -FilePath "$OpenBetaPath\bin\DCS_updater.exe" -ArgumentList "update" -Wait

#Start DCS after update completed
Start-Process -FilePath "$OpenBetaPath\bin-mt\DCS.exe"