#
# Cookbook Name:: le
# Recipe:: configure
#

execute "le register --account-key" do
  command "le register --account-key #{node[:le][:userkey]} --name #{node[:le][:hostname]}"
  action :run
  not_if { File.exists?('/etc/le/config') } 
end

class Chef::Recipe
  include FollowLogs
end

follow_logs()

