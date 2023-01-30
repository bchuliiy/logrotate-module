class logrotate::install {
  package { 'logrotate':
    ensure => present,
  }

  file { '/etc/logrotate.d':
    ensure => directory,
    owner => 'root',
    group => 'root',
    mode => '0755',
    recurse => true,
    source => 'puppet:///modules/logrotate/logrotate.d/',
  }
}
