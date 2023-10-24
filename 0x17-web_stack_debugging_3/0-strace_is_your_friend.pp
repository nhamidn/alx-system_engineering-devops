# Puppet script that fix the fale name problem
exec { 'fix_php_file':
  command => 'sed -i s/class-wp-locale.phpp/class-wp-locale.php/ /var/www/html/wp-settings.php',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}
