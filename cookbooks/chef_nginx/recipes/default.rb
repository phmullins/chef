#
# Cookbook:: chef_nginx
# Recipe:: default
#
# Copyright:: 2017, pmullins11@gmail.com, All Rights Reserved.

apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end

package 'nginx'

service 'nginx' do
  supports :status => true
  action [:enable, :start]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end
