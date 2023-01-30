class logrotate::config {
  # Define the log files to be rotated
  logrotate::file { '/var/log/nginx/*.log':
    rotate      => 7,
    create      => '644 root ',
    size        => '50M',
    missingok   => true,
    compress    => false,
    delaycompress => true,
    notifempty  => true,
    copytruncate => true,
  }
}
