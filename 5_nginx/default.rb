#
# Cookbook:: nginx
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
package 'nginx'
service 'nginx' do
  action [ :enable, :start ]
end
