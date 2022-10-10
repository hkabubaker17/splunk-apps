#installing sysmon
$path = "C:\Program Files\sysmon"
New-Item $path -ItemType Directory
Set-Location $path
Invoke-WebRequest -Uri https://download.sysinternals.com/files/Sysmon.zip -Outfile Sysmon.zip
Expand-Archive Sysmon.zip -Force
Set-Location $path\Sysmon
Invoke-WebRequest -Uri https://raw.githubusercontent.com/hkabubaker17/sysmon-config/main/sysmonconfig-export.xml -Outfile sysmonconfig-export.xml
.\sysmon64.exe -accepteula -i sysmonconfig-export.xml