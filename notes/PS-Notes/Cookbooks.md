# Building Apache Cookbook

- Go to the cookbooks directory

```
# cd ~/chef/chef-repo/cookbooks
```

- Generate a new cookbook for Apache

```
# chef generate cookbook apache
```

- Go to apache cookbook dir, edit the `metadata.rb` file and change the following details

```
name "apache"
maintainer "Arjun Shrinivas"
maintainer_email "vmsnivas@gmail.com"
version "0.1.0"
```

- Go to the recipes directory and edit the `default.rb` file to install and restart Apache

```
# cd recipes
# vi default.rb
```

```
package 'apache2' do
        package_name 'httpd'
        action :install
end

service 'apache2' do
        service_name 'httpd'
        action [:start, :enable]
end
```

- Now check whether the syntax is good or not

```
# ruby -c default.rb
```

- Now check the code with `foodcritic`

```
# foodcritic default.rb
```

- Now let us create a `websites.rb` for creating the `index.html` file for our website

```

- Now we need to upload our apache cookbook to the chef server

```
# knife upload cookbook apache
```
