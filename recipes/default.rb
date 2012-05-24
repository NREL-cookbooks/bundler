include_recipe "rbenv::global_version"

rbenv_gem "bundler" do
  version node[:bundler][:version]
  ruby_version node[:rbenv][:install_global_version]
end
