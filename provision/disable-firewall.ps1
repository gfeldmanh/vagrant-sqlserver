Write-Output 'Disabling Firewall...'
Get-NetFirewallProfile | Set-NetFirewallProfile -Enabled False
