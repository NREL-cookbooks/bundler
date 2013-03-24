include_recipe "rbenv::system"

rbenv_gem "bundler" do
  version node[:bundler][:version]
end

node[:rbenv][:rubies].each do |version|
  if version.is_a?(Hash)
    version = version['name']
  end

  rbenv_gem "bundler" do
    version node[:bundler][:version]
    rbenv_version version
  end
end
