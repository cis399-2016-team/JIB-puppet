class sshd {

        package {
                "openssh-server": ensure => installed;
        }

	case $operatingsystem {
		'Ubuntu':{
			$key_user = "ubuntu"
			$service_name = "ssh"
			}
		'Amazon':{
			$key_user = "ec2-user"
			$service_name = "sshd"
			}
	}

	file { "/etc/ssh/sshd_config":
                source => ["puppet:///modules/sshd/$hostname/sshd_config",
			  "puppet:///modules/sshd/sshd_config",],
                mode => 644,
                owner => root,
                group => root,
		require => Package["openssh-server"],
	}

	service {$service_name:
                enable => true,
                ensure => running,
		hasstatus => true,
		hasrestart => true,
                require => [Package["openssh-server"],
                        File["/etc/ssh/sshd_config"],],
                subscribe => File["/etc/ssh/sshd_config"],
	}

}
