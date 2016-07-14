node default {

	include users
	include ssh

}

node ip-10-0-3-181 {
	include sshd
}
