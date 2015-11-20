If ((Get-WindowsFeature Net-Framework-Core | Select Installed).Installed -eq $false) {
	Write-Output 'Installing .NET Framework...'

	If (!(Get-Module ServerManager)) {
		Write-Debug 'Loading ServerManager module...'
		Push-Location
		Import-Module ServerManager
		Pop-Location
	}
	
	Write-Debug 'Proceeding with installation...'
	Install-WindowsFeature Net-Framework-Core
}
