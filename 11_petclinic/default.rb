#
# Cookbook:: petclinic
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
execute "apt-get update" do
  command "apt-get update"
end
package 'docker.io'
execute "Run application" do
  command "docker run -d -p 8083:8080 anjurose/chefapp"
end
