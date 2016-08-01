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
  when 'debian'
   apt_update 'apt update' do
      action :nothing
    end.run_action(:update)
end

include_recipe 'firefox::default'	