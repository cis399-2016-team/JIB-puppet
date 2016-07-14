class apache {

	package {'httpd':
                ensure => present,
        }

        service {'httpd':
                ensure => "running",
                enable => "true",
                require => Package["httpd"],
        }

	file { "/etc/httpd/conf/httpd.conf":
		ensure => present,
		mode => 644,
		source => "puppet:///modules/apache/httpd.conf",
	}

}
