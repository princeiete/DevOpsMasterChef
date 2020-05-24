#
# Cookbook:: nginx
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#
include_recipe "apt"
package 'nginx'
service 'nginx' do
  action [ :enable, :start ]
end
cookbook_file "/var/www/html/index.html" do
  source "index.html"
  mode "0644"
end
