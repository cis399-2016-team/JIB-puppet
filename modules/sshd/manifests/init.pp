class ssh {

	package { "ssh":
		ensure => present,
	}

	file { "/etc/ssh/sshd_config":
		ensure => present,
		owner => 'root',
		group => 'root',
		mode => '644',
		source => "puppet:///modules/sshd/sshd_config",
		notify => Class["ssh::service"],
	}

	service { "ssh":
		ensure => running,
		hasstatus => true,
		hasrestart => true,
		enable => true,
	}
}
