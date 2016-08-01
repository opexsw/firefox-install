#
# Cookbook Name:: firefox-install
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node.default['firefox']['version'] = node['firefox-install']['version']

case node['platform_family']
  execute 'update' do
  command 'sudo apt-get update'
end
end

include_recipe 'firefox::default'	