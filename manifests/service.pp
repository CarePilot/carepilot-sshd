class sshd::service {
  service { $sshd::params::sshd_service_name:
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class["sshd::config"],
  }
}
