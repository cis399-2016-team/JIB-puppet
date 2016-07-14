class ssh {
	include ssh::install, ssh::config, ssh::service
}

class ssh::install {

	package { "ssh":
		ensure => present,
	}
}

class ssh::config {

	file { "/etc/ssh/sshd_config":
		ensure => present,
		mode => 644,
		source => "puppet:///modules/ssh/files/sshd_config",
		notify => Class["ssh:service"],
	}

}

class ssh::service {

	service { "ssh":
		ensure => running,
		hasstatus => true,
		hasrestart => true,
		enable => true,
	}

}

Class["ssh::install"] -> Class["ssh::config"] -> Class["ssh::service"]
