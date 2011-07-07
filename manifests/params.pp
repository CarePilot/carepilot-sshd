class sshd::params {
  case $operatingsystem {
    Solaris: {
      $sshd_package_name = 'openssh'
      $sshd_service_config = '/etc/ssh/sshd_config'
      $sshd_service_name = 'sshd'
    }
    /(Ubuntu|Debian)/: {
      $sshd_package_name = 'openssh-server'
      $sshd_service_config = '/etc/ssh/sshd_config'
      $sshd_service_name = 'ssh'
    }
    /(RedHat|CentOS|Fedora)/: {
      $sshd_package_name = 'openssh-server'
      $sshd_service_config = fail
      $sshd_service_name = fail
    }
  }
}