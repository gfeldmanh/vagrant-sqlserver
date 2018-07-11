## -*- mode: ruby -*-
## vi: set ft=ruby :

# Box Configuration, change according to your needs
boxconfig = {
  :gui => false,
  :ram => "1536",
  :cpu => "2"
}

# Do not change anything from this point unless you know what you're doing
Vagrant.configure(2) do |config|

  config.vm.box = "opentable/win-2012r2-standard-amd64-nocm"
  
  config.vm.synced_folder "./provision", "/provision" # shared goodies!
  config.vm.synced_folder '.', '/vagrant', disabled: true # we don't need to share root anymore

  config.vm.hostname = "SQLEXPRESS"

  config.vm.provider :vmware_workstation do |v|
    v.gui = boxconfig[:gui]
    v.vmx["memsize"] = boxconfig[:ram]
    v.vmx["numvcpus"] = boxconfig[:cpu]
  end

  config.vm.provider :virtualbox do |v|
    v.gui = boxconfig[:gui]
    v.customize ["modifyvm", :id, "--memory", boxconfig[:ram]]
    v.customize ["modifyvm", :id, "--cpus", boxconfig[:cpu]]
    v.customize ["modifyvm", :id, "--ioapic", "on"]
  end

  config.vm.network :private_network, ip: "192.168.50.10"
    
  config.vm.provision :shell, path: "./provision/install-net-framework.ps1"
  config.vm.provision :shell, path: "./provision/enable-network-discovery.ps1"
  config.vm.provision :shell, path: "./provision/disable-firewall.ps1"
  config.vm.provision :shell, path: "./provision/disable-windows-updates.ps1"
  config.vm.provision :shell, path: "./provision/install-chocolatey.ps1"
  config.vm.provision :shell, path: "./provision/install-sql-engine.ps1"
  config.vm.provision :shell, path: "./provision/install-sqlps.ps1"
  config.vm.provision :shell, path: "./provision/config-sql-ports.ps1"
  config.vm.provision :shell, path: "./provision/enable-rdp.ps1"
end
