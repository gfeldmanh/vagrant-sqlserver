## -*- mode: ruby -*-
## vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "opentable/win-2012r2-standard-amd64-nocm"

  config.vm.synced_folder "./common", "/common" # shared goodies!
  config.vm.synced_folder '.', '/vagrant', disabled: true # we don't need to share root anymore

  config.vm.hostname = "SQLEXPRESS"

  config.vm.provider :vmware_workstation do |v|
    v.gui = true
    v.vmx["memsize"] = "1536"
    v.vmx["numvcpus"] = "2"
  end

  config.vm.provider :virtualbox do |v|
    v.gui = true
    v.customize ["modifyvm", :id, "--memory", "1536"]
    v.customize ["modifyvm", :id, "--cpus", "2"]
    v.customize ["modifyvm", :id, "--ioapic", "on"]
    v.vm.provision :shell, path: "./provision/create-shortcuts.ps1"
  end

  config.vm.network :private_network, ip: "192.168.50.10"
    
  config.vm.provision :shell, path: "./provision/install-net-framework.ps1"
  config.vm.provision :shell, path: "./provision/install-chocolatey.ps1"
  config.vm.provision :shell, path: "./provision/install-sql-engine.ps1"
  config.vm.provision :shell, path: "./provision/install-sqlps.ps1"
  config.vm.provision :shell, path: "./provision/config-sql-ports.ps1"
  config.vm.provision :shell, path: "./provision/enable-rdp.ps1"
end

