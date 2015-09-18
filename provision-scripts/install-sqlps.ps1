Write-Output "Installing SQLPS required packages..."
choco install -y sql2012.clrtypes
choco install -y sql2012.nativeclient
choco install -y msxml6.sp1
choco install -y sql2012.smo
Write-Output "Done!"
choco install -y sql2012.powershell
