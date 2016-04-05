# Vagrant - SQL Server Express 2012
This is a simple Vagrant machine with all the necessary to run an instance of SQL Server Express 2012 in Windows Server 2012 (Server Core, you don't need the GUI for this anyway), this will not install any tools or advanced features, only the server engine (the download of the server is around 200MB only), so you must access it from the host or another machine.

This example has been develop and should work with the following software:
* Vagrant 1.7.4
* Virtualbox 5.0.8
* VMWare Workstation 11.0
* SQL Server 2012 Express Edition

VM Requirements:
* 1.5G RAM
* 2 vCPU
* You can change this specifications in the ```Vagrantfile```

## Getting Started
* Clone de repo
* Fire up the machines using `vagrant up`
* Access the server via ```192.168.50.10``` or via hostname ```SQLEXPRESS```, credentials user: ```sa``` | password: ```#SAPassword!```
