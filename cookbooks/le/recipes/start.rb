
# Cookbook Name:: le
# Recipe:: start
#

# Restart the le agent
service 'logentries' do
  supports :stop => true, :start => true, :restart => true
  action [ :restart ]
end
