$Root = "\\VBOXSRV\"
$Folders = "common"
$nCOM = New-Object -ComObject WScript.Shell

$Folders | ForEach-Object {
	$shortcut = $nCOM.CreateShortcut("$Home\Desktop\" + $_ + " (VBOXSRV).lnk")
	$shortcut.TargetPath = $Root + $_
	$shortcut.Save()
}
