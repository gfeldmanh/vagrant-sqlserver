Write-Output "Installing SQLPS required packages..."
choco install -y -f sql2012.clrtypes
choco install -y -f sql2012.nativeclient
choco install -y -f msxml6.sp1
choco install -y -f sql2012.smo
choco install -y -f sql2012.powershell
