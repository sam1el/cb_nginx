#
# Cookbook:: cb_nginx
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

nginx_install 'aig_nginx' do
  source 'repo'
  keepalive_timeout 120
  worker_processes 4
  worker_connections 2048
end
