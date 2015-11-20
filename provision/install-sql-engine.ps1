Write-Output 'Installing SQL Server Enterprise 2012...'
$SQLInstaller = '\\VBOXSVR\common\provision\setup\setup.exe', '\\vmware-host\Shared Folders\-common\provision\setup\setup.exe'
Write-Output 'Looking for setup.exe...'
$HostName = $env:COMPUTERNAME

$SQLInstaller | ForEach-Object {
	$Temp = $_
	$TestPath = Test-Path $Temp
	
	If ($TestPath) {
		Write-Output "Using path => '$Temp'..."
		# /PID Missing for obvious reasons...
		$Args = '/Q /Action=install /INSTANCEID="MSSQLSERVER" /INSTANCENAME="MSSQLSERVER" /IAcceptSQLServerLicenseTerms /FEATURES=SQLEngine,Replication,BC,Conn,SSMS /TCPENABLED=1 /SQLSVCACCOUNT="NT Service\MSSQLSERVER" /AGTSVCACCOUNT="NT Service\SQLSERVERAGENT" /AGTSVCSTARTUPTYPE="Automatic" /SQLSYSADMINACCOUNTS="' + $HostName + '\vagrant" /SECURITYMODE="SQL" /SAPWD="#SAPassword!"'
		Start-Process $Temp -Wait -ArgumentList $Args
	}
}
