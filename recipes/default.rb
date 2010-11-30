include_recipe "ruby_enterprise"

execute "uninstall old bundlers" do
  command "gem uninstall -a bundler"
  only_if "gem list bundler | grep ,"
end

ree_gem "bundler" do
  version node[:bundler][:version]
end
