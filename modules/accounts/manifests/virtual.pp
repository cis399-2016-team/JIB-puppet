define accounts::virtual ($uid, $keyname, $sshkeytype, $sshkey) {

  user { $title:
    ensure            =>  'present',
    uid               =>  $uid,
    gid               =>  $title,
    shell             =>  '/bin/bash',
    home              =>  "/home/${title}",
    managehome        =>  true,
    require           =>  Group[$title],
  }

  group { $title:
    gid               =>  $uid,
  }

  file { "/home/${title}":
    ensure            =>  directory,
    owner             =>  $title,
    group             =>  $title,
    mode              =>  0750,
    require           =>  [ User[$title], Group[$title] ],
  }

 if ($sshkey != '') {
   ssh_authorized_key {$keyname:
	ensure => present,
	user => $title,
	type => $sshkeytype,
	key => $sshkey,
  }
 }

}

