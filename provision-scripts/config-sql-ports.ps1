Write-Output "Configuring SQL TCP port..."
Import-Module "sqlps" -DisableNameChecking
$smo = 'Microsoft.SqlServer.Management.Smo.'
$wmi = new-object ($smo + 'Wmi.ManagedComputer')
$uri = "ManagedComputer[@Name='VAGRANT-2012-R2']/ ServerInstance[@Name='SQLEXPRESS']/ServerProtocol[@Name='Tcp']"
$tcp = $wmi.GetSmoObject($uri)
$wmi.GetSmoObject($uri + "/IPAddress[@Name='IPAll']").IPAddressProperties[1].Value="1433"
$tcp.alter()
Restart-Service -f "SQL Server (SQLEXPRESS)"