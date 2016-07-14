node default {

	include users
	include ssh

}

node ip-10-0-3-181 {
	include sshd
	include ec2-agents
	include apache
}

node ip-10-0-2-226 {

	include sshd
	include ec2-agents

}
