
class logrotate::params {
  $rotate_count = 10
  $rotate_period = 'daily'
  $log_path = '/var/log/'
  $log_ext = '.log'
  $compress = false
  $missingok = true
  $create = '644 root'
  $size = '50M'
  $copytruncate = true
  $delaycompress = true
  $notifempty = true
}
