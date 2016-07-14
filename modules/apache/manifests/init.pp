class apache {

	package {'apache':
                ensure => present,
        }

        service {'apache':
                ensure => "running",
                enable => "true",
                require => Package["apache"],
        }

}
