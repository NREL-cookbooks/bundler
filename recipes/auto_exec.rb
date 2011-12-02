#
# Cookbook Name:: bundler
# Recipe:: auto_exec
#
# Copyright 2011, NREL
#
# All rights reserved - Do Not Redistribute
#

template "/etc/profile.d/bundler-exec.sh" do
  source "bundler-exec.sh.erb"
  owner "root"
  group "root"
  mode "0644"
end
