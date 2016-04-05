Write-Output 'Installing SQL Server Enterprise 2012...'
$webclient = (new-object net.webclient)
$webclient.Proxy = $null # http://stackoverflow.com/questions/4415443/system-net-webclient-unreasonably-slow
$webclient.DownloadFile('http://download.microsoft.com/download/8/D/D/8DD7BDBA-CEF7-4D8E-8C16-D9F69527F909/ENU/x64/SQLEXPR_x64_ENU.exe', 'C:\SQLEXPR_x64_ENU.exe')
Start-Process 'C:\SQLEXPR_x64_ENU.exe' -Wait -ArgumentList '/Q /Action=install /INSTANCENAME="SQLEXPRESS" /INSTANCEID="SQLExpress" /IAcceptSQLServerLicenseTerms /FEATURES=SQL /TCPENABLED=1 /SECURITYMODE="SQL" /SAPWD="#SAPassword!"'
