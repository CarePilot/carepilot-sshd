class sshd::config {
  file { $sshd::params::sshd_service_config:
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0600,
    source => "puppet:///modules/sshd/sshdd_config",
    require => Class["sshd::install"],
    notify => Class["sshd::service"],
  }
}

