node ip-10-0-2-153 {
	#include users
	include sshd

	cron { "puppet update":
	    command => "cd /etc/puppet && git pull -q origin master",
	    user    => root,
	    minute  => "*/5",
	}

}

node ip-10-0-3-181 {
	include sshd
	#include ec2-agents
	include apache
	include web-content
	include accounts
	realize (Accounts::Virtual['ec2-user'])
  	realize (Accounts::Virtual['orange-banana'])
	realize (Accounts::Virtual['team-a'])
	realize (Accounts::Virtual['caluyacostello'])
	realize (Accounts::Virtual['that-one-team'])
	realize (Accounts::Virtual['chilled-beer'])
	realize (Accounts::Virtual['rumpus'])
	realize (Accounts::Virtual['stevev'])
}

node ip-10-0-2-226 {

	include sshd
	include ec2-agents
	include apache
	include web-content
}
