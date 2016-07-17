class sshd {

	package { "openssh-server":
		ensure => present,
	}

	file { "/etc/ssh/sshd_config":
		ensure => present,
		owner => 'root',
		group => 'root',
		mode => '644',
		source => "puppet:///modules/sshd/sshd_config",
	}

	service { "sshd":
		ensure => running,
		hasstatus => true,
		hasrestart => true,
		enable => true,
		require => Package["openssh-server"],
		subscribe => File["/etc/sshd/sshd_config" ],
	}

	#service { "ssh":
        #        ensure => running,
        #        hasstatus => true,
        #        hasrestart => true,
        #        enable => true,
        #        require => Package["openssh-server"],
                #subscribe => File["/etc/ssh/sshd_config" ],
        #}


}
