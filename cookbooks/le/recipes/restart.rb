#
# Cookbook Name:: le
# Recipe:: restart
#

execute "if ps ax | grep -v grep | grep 'le monitordaemon';
then
  echo 'le monitordaemon is already running' > /var/log/daemon.log;
else 
	le monitordaemon;
fi"
