# Puppet script that increase the ulimit
exec { 'modify_nginx_config':
  command => 'sed -i s/15/2000/ /etc/default/nginx && service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}
