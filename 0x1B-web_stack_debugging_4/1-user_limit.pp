# Puppet script that increase the ulimit
exec { 'modify_security_limits':
  command => 'sed -i "s/holberton/helbertono/" /etc/security/limits.conf',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}
