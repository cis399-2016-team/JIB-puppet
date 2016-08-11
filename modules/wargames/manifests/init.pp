class wargames {

	$level0_pth = '/chroot/jail/home/level0'
	$level1_pth = '/chroot/jail/home/level1'
	$level2_pth = '/chroot/jail/home/level2'

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

	file { $level0_pth:
                ensure  => 'directory',
                owner   => 'level0',
                group   => 'level0',
                mode    => '700',
        }

	file { "${level0_pth}/Documents":
		ensure	=> 'directory',
		owner	=> 'root',
		group	=> 'level0',
		mode	=> '755',
	}

	file {"${level0_pth}/Documents/flag0":
		ensure	=> present,
		owner	=> 'root',
		group	=> 'level0',
		mode	=> '755',
		source	=> "puppet:///modules/wargames/flag0",
	}

	file { "${level0_pth}/README_0":
		ensure	=> present,
		owner	=> 'root',
		mode	=> '644',
		source	=> "puppet:///modules/wargames/README_0",
	}

	file { $level1_pth:
		ensure  => 'directory',
                owner   => 'level1',
                group   => 'level1',
                mode    => '700',
	}

	file { "${level1_pth}/Documents":
                ensure  => 'directory',
                owner   => 'root',
                group   => 'level1',
                mode    => '755',
        }

        file {"${level1_pth}/Documents/flag1":
                ensure  => present,
                owner   => 'root',
                group   => 'level1',
                mode    => '755',
                source  => "puppet:///modules/wargames/flag1",
        }

        file { "${level1_pth}/README_1":
                ensure  => present,
                owner   => 'root',
                mode    => '644',
                source  => "puppet:///modules/wargames/README_1",
        }

	file { $level2_pth:
                ensure  => 'directory',
                owner   => 'level2',
                group   => 'level2',
                mode    => '700',
        }

	file { "${level2_pth}/Documents":
                ensure  => 'directory',
                owner   => 'root',
                group   => 'level2',
                mode    => '755',
        }

        file {"${level2_pth}/Documents/flag2":
                ensure  => present,
                owner   => 'root',
                group   => 'level2',
                mode    => '755',
                source  => "puppet:///modules/wargames/flag2",
        }


}
