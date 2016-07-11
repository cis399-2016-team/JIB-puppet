import '/etc/puppet/modules/sshd/manifests/init.pp'

node ip-10-0-3-181 {
	include ssh

	ssh_authorized_key { 'JIB-jbrodnax2-laptop':
		ensure => 'present',
		user => 'ec2-user',
		type => 'ssh-rsa',
		key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCPd+QMa3RsWNIwlmh1ZjpO18dJqVeIFUXhqXqZYBANgECByAlOBoUMCTTN8a27EBOHzThaiUsIGuBXf+iNYwRsFnf4T0QG6Uc/S43xwnLhq5A+1O77l7kiQ3/EMAJqarCP5JfN2pXeMAW4pTQYHfpxZrjtolmnb280AqFFdQeebO4Cxr1t6XiGUZQ0txieevoCRsBHNwqorbA0zfoponFKSU9k+woLnMhNx52+KOKWppmpRr0+NXa6NijxROTC08ptzCGXRGNVOnBu8kI7fVHPNz70t4AutHFFqtJ4GGtt/UqeMS8yyJ2A2dinF2Ow/gyhLf+4m6Mr4Ok5vqpFuSVv',
	}

}

node ip-10-0-2-53 {

    cron { "puppet update":
	command => "cd /etc/puppet && git pull -q origin master",
	user    => root,
	minute  => "*/5",
    }
}

