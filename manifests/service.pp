class sshd::service {
  iptables::resource::rule { ssh:
    port => 22,
    interface => 'eth0',
  }
  service { $sshd::params::sshd_service_name:
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class["sshd::config"],
  }
}
