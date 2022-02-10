netsh wlan add profile filename="D:\wifi profile.xml" #Add wifi profile
\LGPO.exe /g gpedit_backup\ #import all policies in directory
Get-WmiObject -Class Win32_Product | Select-Object -Property Name #view intalled software
$MyApp = Get-WmiObject -Class Win32_Product | Where-Object{$_.Name -eq "Adobe Flash Player"} #Input software to uninstall
$MyApp.Uninstall()
$MyApp = Get-WmiObject -Class Win32_Product | Where-Object{$_.Name -eq "Log Me In"} #Input software to uninstall
$MyApp.Uninstall()