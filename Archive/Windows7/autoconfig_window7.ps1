#Enable Windows Classic Theme
Write-Host "Enabling Classic Theme"
& $env:Systemroot'\Resources\Ease of Access Themes\classic.theme'

#Set Explorer Settings
Write-Host "Configuring Explorer-Settings"
$explorerKey = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
Set-ItemProperty $explorerKey NavPaneShowAllFolders 1
Set-ItemProperty $explorerKey NavPaneExpandToCurrentFolder 1
Set-ItemProperty $explorerKey Hidden 1
Set-ItemProperty $explorerKey HideFileExt 0

#Set Taskbar Settings
Write-Host "Taskbar Settings"
Set-ItemProperty $explorerKey TaskbarSmallIcons 1
Set-ItemProperty $explorerKey TaskbarGlomLevel 1

#Disable Customer Experience Improvement Program
Set-ItemProperty 'HKLM:\SOFTWARE\Microsoft\SQMClient\Windows' CEIPEnable 0

#Desktop Items
Write-Host "Display Icons"
$desktopKey = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons'
new-item -path $desktopKey
new-item -path $desktopKey\ClassicStartMenu
new-item -path $desktopKey\NewStartPanel
new-ItemProperty -path $desktopKey\ClassicStartMenu -name '{20D04FE0-3AEA-1069-A2D8-08002B30309D}' -value 0
new-ItemProperty -path $desktopKey\ClassicStartMenu -name '{59031a47-3f72-44a7-89c5-5595fe6b30ee}' -value 0
new-ItemProperty -path $desktopKey\ClassicStartMenu -name '{645FF040-5081-101B-9F08-00AA002F954E}' -value 0

new-ItemProperty -path $desktopKey\NewStartPanel -name '{20D04FE0-3AEA-1069-A2D8-08002B30309D}' -value 0
new-ItemProperty -path $desktopKey\NewStartPanel -name '{59031a47-3f72-44a7-89c5-5595fe6b30ee}' -value 0
new-ItemProperty -path $desktopKey\NewStartPanel -name '{645FF040-5081-101B-9F08-00AA002F954E}' -value 0

#Disable Remote Assistance
Set-ItemProperty 'HKLM:\System\CurrentControlSet\Control\Remote Assistance' fAllowToGetHelp 0

#Restart Explorer
Stop-Process -processname explorer

#Disable UAC
Write-Host "Disabling User Account Control (UAC)"
Set-ItemProperty 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System' EnableLUA 0
Write-Host "System needs to be rebooted"
#Disable Services
#Windows Search
(gwmi win32_service -filter "name='WSearch'").ChangeStartMode("Disabled")
#Windows Features
DISM /Online /Disable-Feature /FeatureName:WindowsGadgetPlatformDISM /Online /Disable-Feature /FeatureName:TabletPCOC /NoRestartDISM /Online /Disable-Feature /FeatureName:Printing-XPSServices-Features /NoRestart
DISM /Online /Disable-Feature /FeatureName:Xps-Foundation-Xps-Viewer /NoRestart
DISM /Online /Disable-Feature /FeatureName:Printing-Foundation-InternetPrinting-Client /NoRestart
DISM /Online /Disable-Feature /FeatureName:MediaCenter /NoRestart
DISM /Online /Disable-Feature /FeatureName:OpticalMediaDisc /NoRestart
DISM /Online /Disable-Feature /FeatureName:WindowsMediaPlayer /NoRestart