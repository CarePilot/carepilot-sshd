class sshd::install {
  package { $sshd::params::sshd_package_name:
    ensure => present,
  }
}

