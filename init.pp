class logrotate {
  package { 'logrotate':
    ensure => present,
  }

  file { '/etc/logrotate.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/logrotate/logrotate.conf',
  }

  include logrotate::config

}
