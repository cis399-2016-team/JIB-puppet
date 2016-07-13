class users {

	user { 'ubuntu':
		ensure => 'present',
		shell => '/bin/bash',
	}

	file { '/home/ubuntu':
		ensure => directory,
		source => 'puppet:///modules/users/ubuntu',
	}

}
