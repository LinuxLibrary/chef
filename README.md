# CHEF - IAC

- Chef-Server

```
yum install epel-release -y
yum makecache fast
yum update
yum install wget
wget https://packages.chef.io/files/stable/chef-server/12.16.9/el/7/chef-server-core-12.16.9-1.el7.x86_64.rpm
rpm -ivh chef-server-core-12.16.9-1.el7.x86_64.rpm 
chef-server-ctl reconfigure
chef-server-ctl user-create arjun Arjun Shrinivas vmsnivas@gmail.com 'Admin_119' --filename arjun-rsa
chef-server-ctl org-create linuxlibrary 'Linux Library' --association_user arjun --filename linuxlibrary-validator.pem
chef-server-ctl install chef-manage
chef-server-ctl reconfigure
chef-manage-ctl reconfigure
mkdir /home/vagrant/certs/
cp /var/opt/opscode/nginx/ca/server.crt /home/vagrant/certs/
chown vagrant:vagrant /home/vagrant/certs/server.crt
su - vagrant
cd ~/certs
scp server.crt vagrant@workstation:/home/vagrant/chef-repo/.chef/trusted_certs/
```

- Chef-Workstation

```
wget https://packages.chef.io/files/stable/chefdk/2.1.11/el/7/chefdk-2.1.11-1.el7.x86_64.rpm
rpm -ivh chefdk-2.1.11-1.el7.x86_64.rpm
scp chef-starter.zip vagrant@192.168.1.51:/tmp/
sudo yum install unzip -y
unzip chef-starter.zip 
knife bootstrap 192.168.1.52 -N node01 --ssh-user vagrant --sudo
```

- Cookbooks

```
cd ~/chef/chef-repo/cookbooks
chef generate cookbook learn
```
