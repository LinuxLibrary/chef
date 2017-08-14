# Starting Apache Recipe

- Create a cookbook for Apache

```
# knife cookbook create apache
(or)
# chef generate cookbook apache
```

- Let us create a simple recipe in that apache cookbook which will install the apache on our node

```
# cd recipes
# vi default.rb

package "httpd" do
	action :install
end
```

- Upload the cookbook to the chef server

```
# knife cookbook upload apache
```

- Now we need to add the `apache` recipe to the `dev02` node's runlist. So that we can run this recipe on the node through `chef-client`

```
# knife node run_list add dev02 "recipe[apache]"
```

- Now go to the node and run `chef-client` which will install the recipe

```
# chef-client
```
