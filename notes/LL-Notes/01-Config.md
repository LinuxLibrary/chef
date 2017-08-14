# Configuring Chef

## Chef Organization

- Go to [GetChef](https://www.getchef.com) and SignUp for your account
- Once you have your account login and `Create New Organization`
- Now you need to download the starter kit. For this:
	- Click on the Organization name at the right-most corner and select `Manage Organizations`
	- Select your organization
	- Click on the `Starter Kit` in the left pane
	- Click on `Download Starter Kit`

## Configuring Environment

- We have 3 type of Chef Machines we deal with
	- ***Chef WorkStation*** (This is our local machine from where we control the infrastructure through the Chef Development Kit or ChefDK)
	- ***Chef Server*** (The Chef Server acts as a central repository for cookbooks as well as for information about every node it manages)
	- ***Chef Node/Client*** (A node is any physical or virtual machine in your network that is managed by the Chef server. The Chef client runs on each node and securely communicates with the Chef server to get the latest configuration instructions. The Chef client uses the instructions to bring the node to its desired state.)

- ***Configuring WorkStation***
	- Create a directory for Chef
	
	```
	# mkdir /chef
	```

	- Download, copy and unzip the starter kit to `/chef`
	
	```
	# unzip chef-starter.zip
	```

	- Download ChefDK and install it
	
	```
	# rpm -ivh chefdk-2.1.11-1.el6.x86_64.rpm
	```
	
- ***Configure Node/Client***
	- We need to add the client/node through bootstrapping from the WorkStation
	- We need to do this through the `root` account. So we need to permit the `root` account via SSH. For this uncomment `PermitRootLogin yes` and restart SSH
	
	```
	# vi /etc/ssh/sshd_config
	PermitRootLogin	yes
	
	# service sshd restart
	```
	
	- Now from the server we need to add the node through bootstrapping

	```
	# knife bootstrap 192.168.1.51 -x root -p password -N dev02
	```
