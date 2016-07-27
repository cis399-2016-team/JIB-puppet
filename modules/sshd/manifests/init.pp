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

	#package { "openssh-server":
	#
	#	ensure => present,
	#}

	#file { "/etc/ssh/sshd_config":
	#	ensure => present,
	#	owner => 'root',
	#	group => 'root',
	#	mode => '644',
	#	source => "puppet:///modules/sshd/sshd_config",
	#	notify => Service['sshd'],
	#}

	file { "/etc/ssh/sshd_config":
                source => ["puppet:///modules/sshd/$hostname/sshd_config",
			  "puppet:///modules/sshd/sshd_config",],
                mode => 644,
                owner => root,
                group => root,
		require => Package["openssh-server"],
		notify => [$service_name],
	}

	service {$service_name:
                enable => true,
                ensure => running,
                require => [Package["openssh-server"],
                        File["/etc/ssh/sshd_config"],],
                subscribe => File["/etc/ssh/sshd_config"],
	}

	#service { "sshd":
	#	ensure => running,
	#	hasstatus => true,
	#	hasrestart => true,
	#	enable => true,
	#	require => Package["openssh-server"],
	#	subscribe => File["/etc/ssh/sshd_config"],
	#}

	#service { "ssh":
        #        ensure => running,
        #        hasstatus => true,
        #        hasrestart => true,
        #        enable => true,
        #        require => Package["openssh-server"],
                #subscribe => File["/etc/ssh/sshd_config" ],
        #}


}
