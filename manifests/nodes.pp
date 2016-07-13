node default {

	user { 'ubuntu':
		ensure => 'present',
		groups => ['sudo'],
		shell => '/bin/bash',
	}

}
