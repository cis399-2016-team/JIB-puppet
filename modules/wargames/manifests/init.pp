class wargames {

	$level0_pth = '/chroot/jail/home/level0'
	$level1_pth = '/chroot/jail/home/level1'
	$level2_pth = '/chroot/jail/home/level2'

	user { 'level0':
		ensure		=> present,
		uid		=> 505,
		password	=> '$6$WzlMo1Rv$SRlam//cWbixQYv5C..rICNImY00Y1F6tPYwUktbFL66Cv2ZEDAGq7GPYXF8/kSYLZND0ouVpBY813/JlWQ3b1',
	}

	user { 'level1':
                ensure		=> present,
                uid		=> 506,
                password	=> '$6$FJbqeYLC$eSfNjc/OLaWbiTMTSsoNI7SUGDHOLTbbUlfLRaeOOO7qnVK/zMLHj2wZyKKwQiKxWO5jW.cc3UYNRt8IRd2Lp1',
        }

	user { 'level2':
                ensure		=> present,
                uid     	=> 507,
                password	=> '$6$IUG6B2zk$yCm06gzCkDejvGUGzqaYVsIuhEu.bD6Smy2AOA4l9DMNa5dui06CkvIK37ft0eoYuwkuu0ooqeK.st6wInCTP.',
        }

	$chroot_dirs = [ '/chroot', '/chroot/jail', 
	'/chroot/jail/etc', 
	'/chroot/jail/bin', 
	'/chroot/jail/usr', 
	'/chroot/jail/lib', 
	'/chroot/jail/lib64', 
	'/chroot/jail/dev',
	'/chroot/jail/home', ]

	file { $chroot_dirs:
		ensure	=> 'directory',
		owner	=> 'root',
		mode	=> '755',
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

	file { "${level0_pth}/popREGSnotCAPS":
		ensure	=> present,
		owner	=> 'level1',
		group	=> 'level1',
		mode	=> '4755',
		source	=> "puppet:///modules/wargames/popREGSnotCAPS",
	}

	file { "${level0_pth}/.bashrc":
		ensure	=> present,
		owner	=> 'root',
		group	=> 'level0',
		mode	=> '755',
		source	=> "puppet:///modules/wargames/bashrc.txt",
	}

	file { "${level0_pth}/.welcome_banner":
		ensure	=> present,
		owner	=> 'root',
		group	=> 'level0',
		mode	=> '644',
		source	=> "puppet:///modules/wargames/welcome_banner.txt",
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

	file { "${level0_pth}/README":
		ensure	=> present,
		owner	=> 'root',
		mode	=> '644',
		source	=> "puppet:///modules/wargames/README0.txt",
	}

	file { $level1_pth:
		ensure  => 'directory',
                owner   => 'level1',
                group   => 'level1',
                mode    => '700',
	}

	file { "${level1_pth}/rop_it":
                ensure  => present,
                owner   => 'level2',
                group   => 'level2',
                mode    => '4755',
                source  => "puppet:///modules/wargames/rop_it",
        }

	file { "${level1_pth}/.bashrc":
                ensure  => present,
                owner   => 'root',
                group   => 'level1',
                mode    => '755',
                source  => "puppet:///modules/wargames/bashrc.txt",
        }

        file { "${level1_pth}/.welcome_banner":
                ensure  => present,
                owner   => 'root',
                group   => 'level1',
                mode    => '644',
                source  => "puppet:///modules/wargames/welcome_banner.txt",
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

        file { "${level1_pth}/README":
                ensure  => present,
                owner   => 'root',
                mode    => '644',
                source  => "puppet:///modules/wargames/README1.txt",
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
