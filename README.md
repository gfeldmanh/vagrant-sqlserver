# Vagrant - SQL Server Express 2012
This is a simple Vagrant machine with all the necesary to run an instance of SQL Server Express 2012 in Windows Server 2012 (preferably core, you dont need the gui for this one anyway), it uses chocolatey only as provision method, also it doesn't install any of the tools nor any advanced feature beside engine and PSSQL (the download of the server is around 200MB only), so you must access it from the host or another machine.

This example has been develop and should work with the following software:
* Vagrant 1.7.4
* Virtualbox 5.0.8
* VMWare Workstation 11.0
* SQL Server 2012 Express Edition

## Getting Started
* Clone de repo
* Fire up the machines using `vagrant up`
* Access the server via 192.168.50.10, using user: sa - psswd: #SAPassword!
