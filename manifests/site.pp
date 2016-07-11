import '/etc/puppet/modules/sshd/manifests/init.pp'

node ip-10-0-2-226 {
	include ssh

	ssh_authorized_key { 'JIB-jbrodnax2-home':
		ensure => 'present',
		user   => 'ec2-user',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCPZKsyqF2qyLHNZOKyz6oiNK8BIuN7D9WT/TfwDv1eUccwfJJ9ZfSAWNggDhmW64JbwIQosv0NgJsqCXLUt+Ufc8Zd/hyuWTzM833nAiG1LWaesiNXRK6yKJ0qyitQlItCVHZ/Xcp7cJStIC2Fuh8La187BVxyTjRhhjMSP6wLmr++CAZ/coty4v2e9HKR9hJ3ytOfVkElg2I/CvucgpuerjWF+Ks1yKd9LK/t3xyYpzidWZpIug1+VDK/UhxlIaF7VXuea18xNytWEN11hJW16lFra/9/VbAPaxNQ64ygJvUeH2Ls69Z7BgRYv14xdqVy6uwJx5bGAgKlkyLeDHOr',
	}

	ssh_authorized_key { 'JIB-jbrodnax2-laptop':
                ensure => 'present',
                user => 'ec2-user',
                type => 'ssh-rsa',
                key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCPd+QMa3RsWNIwlmh1ZjpO18dJqVeIFUXhqXqZYBANgECByAlOBoUMCTTN8a27EBOHzThaiUsIGuBXf+iNYwRsFnf4T0QG6Uc/S43xwnLhq5A+1O77l7kiQ3/EMAJqarCP5JfN2pXeMAW4pTQYHfpxZrjtolmnb280AqFFdQeebO4Cxr1t6XiGUZQ0txieevoCRsBHNwqorbA0zfoponFKSU9k+woLnMhNx52+KOKWppmpRr0+NXa6NijxROTC08ptzCGXRGNVOnBu8kI7fVHPNz70t4AutHFFqtJ4GGtt/UqeMS8yyJ2A2dinF2Ow/gyhLf+4m6Mr4Ok5vqpFuSVv',
        }

	ssh_authorized_key { 'bheng-key-pair-oregon':
            ensure => 'present',
            user   => 'ubuntu',
            type   => 'ssh-rsa',
            key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCZZ3Gd+3oE71KdZBBP+5xkHizev7Jr5hCGC8mrn3Wef0Aql/hpGGDrAH0hEjeGs+nYMkyFM2EJH+Nt+hMXg59Pssruvgrv+5pVjIiDPucwxgcWHfyhwy7hUlReDiwz7C9VLZXgHdyv8vbMeSDPCO0sNXD1LLL6f6WjHMqsBXi8PXtwe9Bp+ZG+rsz1Odn2IxsYXC0d6kALfknVRDXQxXDFS1HN3vtti5uRMhUEt8/0ceqUDaLfXJ/IbnMtc1wzfV2VAcacvCzlbdjp1bO1Y6ToE4l9UvL9+5bp4mtEZHo61q913M4s2N2/HMk7IvYNJnlFKKAN6wEMlHnkBM7a36hX',
        }


}

node ip-10-0-3-181 {
	include ssh

	ssh_authorized_key { 'JIB-jbrodnax2-laptop':
		ensure => 'present',
		user => 'ec2-user',
		type => 'ssh-rsa',
		key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCPd+QMa3RsWNIwlmh1ZjpO18dJqVeIFUXhqXqZYBANgECByAlOBoUMCTTN8a27EBOHzThaiUsIGuBXf+iNYwRsFnf4T0QG6Uc/S43xwnLhq5A+1O77l7kiQ3/EMAJqarCP5JfN2pXeMAW4pTQYHfpxZrjtolmnb280AqFFdQeebO4Cxr1t6XiGUZQ0txieevoCRsBHNwqorbA0zfoponFKSU9k+woLnMhNx52+KOKWppmpRr0+NXa6NijxROTC08ptzCGXRGNVOnBu8kI7fVHPNz70t4AutHFFqtJ4GGtt/UqeMS8yyJ2A2dinF2Ow/gyhLf+4m6Mr4Ok5vqpFuSVv',
	}

	ssh_authorized_key { 'JIB-jbrodnax2-home':
                ensure => 'present',
                user   => 'ec2-user',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCPZKsyqF2qyLHNZOKyz6oiNK8BIuN7D9WT/TfwDv1eUccwfJJ9ZfSAWNggDhmW64JbwIQosv0NgJsqCXLUt+Ufc8Zd/hyuWTzM833nAiG1LWaesiNXRK6yKJ0qyitQlItCVHZ/Xcp7cJStIC2Fuh8La187BVxyTjRhhjMSP6wLmr++CAZ/coty4v2e9HKR9hJ3ytOfVkElg2I/CvucgpuerjWF+Ks1yKd9LK/t3xyYpzidWZpIug1+VDK/UhxlIaF7VXuea18xNytWEN11hJW16lFra/9/VbAPaxNQ64ygJvUeH2Ls69Z7BgRYv14xdqVy6uwJx5bGAgKlkyLeDHOr',
        }

	ssh_authorized_key { 'bheng-key-pair-oregon':
            ensure => 'present',
            user   => 'ubuntu',
            type   => 'ssh-rsa',
            key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCZZ3Gd+3oE71KdZBBP+5xkHizev7Jr5hCGC8mrn3Wef0Aql/hpGGDrAH0hEjeGs+nYMkyFM2EJH+Nt+hMXg59Pssruvgrv+5pVjIiDPucwxgcWHfyhwy7hUlReDiwz7C9VLZXgHdyv8vbMeSDPCO0sNXD1LLL6f6WjHMqsBXi8PXtwe9Bp+ZG+rsz1Odn2IxsYXC0d6kALfknVRDXQxXDFS1HN3vtti5uRMhUEt8/0ceqUDaLfXJ/IbnMtc1wzfV2VAcacvCzlbdjp1bO1Y6ToE4l9UvL9+5bp4mtEZHo61q913M4s2N2/HMk7IvYNJnlFKKAN6wEMlHnkBM7a36hX',
        }



}

node ip-10-0-2-53 {

    include ssh

    ssh_authorized_key { 'bheng-key-pair-oregon':
	    ensure => 'present',
	    user   => 'ubuntu',
	    type   => 'ssh-rsa',
	    key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCZZ3Gd+3oE71KdZBBP+5xkHizev7Jr5hCGC8mrn3Wef0Aql/hpGGDrAH0hEjeGs+nYMkyFM2EJH+Nt+hMXg59Pssruvgrv+5pVjIiDPucwxgcWHfyhwy7hUlReDiwz7C9VLZXgHdyv8vbMeSDPCO0sNXD1LLL6f6WjHMqsBXi8PXtwe9Bp+ZG+rsz1Odn2IxsYXC0d6kALfknVRDXQxXDFS1HN3vtti5uRMhUEt8/0ceqUDaLfXJ/IbnMtc1wzfV2VAcacvCzlbdjp1bO1Y6ToE4l9UvL9+5bp4mtEZHo61q913M4s2N2/HMk7IvYNJnlFKKAN6wEMlHnkBM7a36hX',
	}

	ssh_authorized_key { 'JIB-jbrodnax2-home':
                ensure => 'present',
                user   => 'ec2-user',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCPZKsyqF2qyLHNZOKyz6oiNK8BIuN7D9WT/TfwDv1eUccwfJJ9ZfSAWNggDhmW64JbwIQosv0NgJsqCXLUt+Ufc8Zd/hyuWTzM833nAiG1LWaesiNXRK6yKJ0qyitQlItCVHZ/Xcp7cJStIC2Fuh8La187BVxyTjRhhjMSP6wLmr++CAZ/coty4v2e9HKR9hJ3ytOfVkElg2I/CvucgpuerjWF+Ks1yKd9LK/t3xyYpzidWZpIug1+VDK/UhxlIaF7VXuea18xNytWEN11hJW16lFra/9/VbAPaxNQ64ygJvUeH2Ls69Z7BgRYv14xdqVy6uwJx5bGAgKlkyLeDHOr',
        }

        ssh_authorized_key { 'JIB-jbrodnax2-laptop':
                ensure => 'present',
                user => 'ec2-user',
                type => 'ssh-rsa',
                key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCPd+QMa3RsWNIwlmh1ZjpO18dJqVeIFUXhqXqZYBANgECByAlOBoUMCTTN8a27EBOHzThaiUsIGuBXf+iNYwRsFnf4T0QG6Uc/S43xwnLhq5A+1O77l7kiQ3/EMAJqarCP5JfN2pXeMAW4pTQYHfpxZrjtolmnb280AqFFdQeebO4Cxr1t6XiGUZQ0txieevoCRsBHNwqorbA0zfoponFKSU9k+woLnMhNx52+KOKWppmpRr0+NXa6NijxROTC08ptzCGXRGNVOnBu8kI7fVHPNz70t4AutHFFqtJ4GGtt/UqeMS8yyJ2A2dinF2Ow/gyhLf+4m6Mr4Ok5vqpFuSVv',
        }


    cron { "puppet update":
	command => "cd /etc/puppet && git pull -q origin master",
	user    => root,
	minute  => "*/5",
    }
}

