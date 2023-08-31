#Puppet configuration file

package { 'nginx':
  ensure => 'installed',
}

file { '/var/www/html/index.html':
  content => 'Hello World',
}

file_line { 'nginx-redirect':
  path   => '/etc/nginx/sites-available/default',
  line   => '    location /redirect_me {',
  match  => '^server {',
  after  => '^server {',
  ensure => 'present',
}

file_line { 'nginx-redirect-return':
  path   => '/etc/nginx/sites-available/default',
  line   => '        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;',
  after  => '    location /redirect_me {',
  ensure => 'present',
}

file_line { 'nginx-redirect-end':
  path   => '/etc/nginx/sites-available/default',
  line   => '    }',
  after  => '        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;',
  ensure => 'present',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
