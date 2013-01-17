default['app'] = {
  'name' => 'marozi',
  'ruby' => '2.0.0-rc1'
}

app = node['app']

default['ruby']              = {
  'username' => "#{app['name']}-#{app['ruby']}",
  'version' => app['ruby']
}