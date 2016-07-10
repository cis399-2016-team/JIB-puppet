import "modules/*"
node ip-10-0-3-181 {
	include ssh
}

node ip-10-0-2-53 {

    cron { "puppet update":
	command => "cd /etc/puppet && git pull -q origin master",
	user    => root,
	minute  => "*/5",
    }
}

