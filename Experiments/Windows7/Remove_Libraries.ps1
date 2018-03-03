#########################
# Removes Libriaries from Explorer
#########################

# CAUTION:
# This script may mess up your Windows Update 
# Also Windows Update may just reset these settings 
# This does not really work the way how I would have expected it to work

try{
	Remove-Item -path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{031E4825-7B94-4dc3-B131-E946B44C8DD5} "
	Remove-Item -path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{2112AB0A-C86A-4ffe-A368-0DE96E47012E} "
	Remove-Item -path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{491E922F-5643-4af4-A7EB-4E7A138D8174} "
	Remove-Item -path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7b0db17d-9cd2-4a93-9733-46cc89022e7c} "
	Remove-Item -path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{A302545D-DEFF-464b-ABE8-61C8648D939B} "
	Remove-Item -path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{A990AE9F-A03B-4e80-94BC-9912D7504104} "
}
catch {
	Keys could not be removed
}