## -*- mode: ruby -*-
## vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "wsc12r2"
  config.vm.network "private_network", ip: "192.168.50.4"
  config.vm.guest = :windows
  config.windows.halt_timeout = 15

  config.vm.provision :shell, path: "provision-scripts/install-net-framework.ps1"
  config.vm.provision :shell, path: "provision-scripts/install-chocolatey.ps1"
  config.vm.provision :shell, path: "provision-scripts/install-sql-engine.ps1"
  config.vm.provision :shell, path: "provision-scripts/install-sqlps.ps1"
  config.vm.provision :shell, path: "provision-scripts/config-sql-ports.ps1"
  config.vm.provision :shell, path: "provision-scripts/enable-rdp.ps1"
end
