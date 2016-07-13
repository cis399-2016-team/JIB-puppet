class users {

	user { 'ubuntu':
		ensure => 'present',
		groups => ['sudo'],
		shell => '/bin/bash',
	}

	file { '/home/ubuntu':
		ensure => directory,
		owner => 'ubuntu',
		source => 'puppet:///modules/users/ubuntu',
	}

}
