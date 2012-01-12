include_recipe "rvm::install"

execute "uninstall old bundlers" do
  command "/usr/local/rvm/bin/rvm default exec gem uninstall -a bundler"
  only_if "/usr/local/rvm/bin/rvm default exec gem list bundler | grep ,"
end

rvm_gem "bundler" do
  version node[:bundler][:version]
  binary_wrapper "bundle"
end
