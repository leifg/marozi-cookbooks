username     = node['ruby']['username']
home_dir     = "/home/#{username}"

user username do
  shell "/bin/bash"
  supports :manage_home => true
  action :create
  home home_dir
end

ruby username do
  version node['ruby']['version']
  home home_dir
  owner username
  exports %W(app)
end