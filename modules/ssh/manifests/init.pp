#class ssh {
#	include ssh::install, ssh::config, ssh::service
#}
#
#class ssh::install {
#
#	package { "ssh":
#		ensure => present,
#	}
#}
#
#class ssh::config {
#
#	file { "/etc/ssh/sshd_config":
#		ensure => present,
#		mode => 644,
#		source => "puppet:///modules/ssh/sshd_config",
#		notify => Class["ssh::service"],
#	}
#
#}
#
#class ssh::service {
#
#	service { "ssh":
#		ensure => running,
#		hasstatus => true,
#		hasrestart => true,
#		enable => true,
#		#subscribe => File['/etc/ssh/sshd_config'],
#	}
#
#}
#
#Class["ssh::install"] -> Class["ssh::config"] -> Class["ssh::service"]

class ssh {

	package { "openssh-server":

		ensure => present,
	}

	file { "/etc/ssh/sshd_config":
		ensure => present,
		owner => 'root',
		group => 'root',
		mode => '644',
		source => "puppet:///modules/ssh/sshd_config",
		notify => Service['ssh'],
	}

	service { "ssh":
		ensure => running,
		hasstatus => true,
		hasrestart => true,
		enable => true,
		require => Package["openssh-server"],
		subscribe => File["/etc/ssh/sshd_config"],
	}

}
