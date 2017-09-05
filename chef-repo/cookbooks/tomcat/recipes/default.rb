#
# Cookbook:: tomcat
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'epel-release'
package 'tomcat'
package 'tomcat-webapps'
package 'tomcat-admin-webapps'

include_recipe 'tomcat::sample'

service 'tomcat' do
	action [:enable, :restart]
end

