node ip-10-0-2-153 {
	include users
	include ssh

	cron { "puppet update":
	    command => "cd /etc/puppet && git pull -q origin master",
	    user    => root,
	    minute  => "*/5",
	}

}

node ip-10-0-3-181 {
	include sshd
	include ec2-agents
	include apache
	include web-content
}

node ip-10-0-2-226 {

	include sshd
	include ec2-agents
	include apache
	include web-content
}
