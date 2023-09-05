#Configure nginx header response with puppet
exec { 'update':
  command  => 'sudo apt-get update',
  provider => shell,
}

package {'nginx':
  ensure => present,
}

file_line { 'header line':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  line   => "server {\n    add_header X-Served-By $hostname;",
  match  => '^\s*server {',
}

exec { 'restart service':
  command  => 'sudo service nginx restart',
  provider => shell,
}
