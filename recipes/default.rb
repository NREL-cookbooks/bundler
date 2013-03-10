include_recipe "rbenv::system"

rbenv_gem "bundler" do
  version node[:bundler][:version]
end
