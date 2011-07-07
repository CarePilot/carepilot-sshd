class sshd {
  include sshd::params, sshd::install, sshd::config, sshd::service
}
