class wargames {

	$chroot_dirs = [ '/chroot', '/chroot/jail', 
	'/chroot/jail/etc', 
	'/chroot/jail/bin', 
	'/chroot/jail/usr', 
	'/chroot/jail/lib', 
	'/chroot/jail/lib64', 
	'/chroot/jail/dev', ]

	file { $chroot_dirs:
		ensure	=> 'directory',
		owner	=> 'root',
		mode	=> '755',
	}

	file { "/chroot/jail/home":
		ensure	=> 'directory',
		owner	=> 'level2',
		mode	=> '755'
	}

	file { "/chroot/jail/etc/passwd":
		ensure	=> present,
		owner	=> 'root',
		mode	=> '644',
		source	=> "puppet:///modules/wargames/passwd",
	}

	file { "/chroot/jail/etc/shadow":
                ensure  => present,
		owner	=> 'root',
		mode	=> '644',
                source  => "puppet:///modules/wargames/shadow",
        }

	file { "/chroot/jail/etc/group":
                ensure  => present,
                owner   => 'root',
                mode    => '644',
                source  => "puppet:///modules/wargames/group",
        }

	file { "/chroot/jail/home/level0":
                ensure  => 'directory',
                owner   => 'level0',
                group   => 'level0',
                mode    => '700',
        }

	file { "/chroot/jail/home/level1":
		ensure  => 'directory',
                owner   => 'level1',
                group   => 'level1',
                mode    => '700',
	}

	file { "/chroot/jail/home/level2":
                ensure  => 'directory',
                owner   => 'level2',
                group   => 'level2',
                mode    => '700',
        }

}
