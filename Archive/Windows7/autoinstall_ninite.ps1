# NOTE: Use Chocolatey it is a better tool

Write-Host Ninite autoinstall
#Get item names by reading ninite.exe download url
$items = @(".net", 
"7zip", "avast", "chrome","dropbox", 
"eclipse", "filezilla", "imgburn", "itunes", 
"java", "notepadplusplus", "skydrive", "skype", 
"steam", "teracopy", "thunderbird", "vlc", "winamp")

#Create URL
foreach ($item in $items)
{ $url += $item + "-"
}
$url = "http://www.ninite.com/" + $url.TrimEnd("-") + "/ninite.exe"

#Download 
$file = [system.environment]::getenvironmentvariable("userprofile") + "\Downloads\ninite.exe"
$webclient = New-Object System.Net.WebClient
$webclient.DownloadFile($url,$file)

& $file

#If you have access to the Pro version of ninite it is possible to use the silent trigger instead
#& $file /silent