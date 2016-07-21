class ec2-agents {

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
            user   => 'ec2-user',
            type   => 'ssh-rsa',
            key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCZZ3Gd+3oE71KdZBBP+5xkHizev7Jr5hCGC8mrn3Wef0Aql/hpGGDrAH0hEjeGs+nYMkyFM2EJH+Nt+hMXg59Pssruvgrv+5pVjIiDPucwxgcWHfyhwy7hUlReDiwz7C9VLZXgHdyv8vbMeSDPCO0sNXD1LLL6f6WjHMqsBXi8PXtwe9Bp+ZG+rsz1Odn2IxsYXC0d6kALfknVRDXQxXDFS1HN3vtti5uRMhUEt8/0ceqUDaLfXJ/IbnMtc1wzfV2VAcacvCzlbdjp1bO1Y6ToE4l9UvL9+5bp4mtEZHo61q913M4s2N2/HMk7IvYNJnlFKKAN6wEMlHnkBM7a36hX',
        }

#Chilled-Beer

	ssh_authorized_key { "chenders-key-pair-oregon":
    		user => "chilled-beer",
		type => "ssh-rsa",
		key  => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCWR1HbA7kQtEHE2qHTQnuTNsEGQtz8cMg5HID4WaMwOdNKGYR4ARmXHhI6Lpn2/kQ97ay2j1M1tYZhJSsglqrsGRY+gxEyr3Yp5Aq4KVLqYEnvHV5cfRbpekD3zGULH2dri8C/c/Z8ASBNHmm3deLz1IiB2IetTZ3fCS3VAqvlEF6WIbXw13j5kGGHbPG/TFevdKXwQTAK75P1LaNx00vjTHPP03/nmwRItl3lLuYS8RXyrOtmJR/oxCWqu+WZCBV5Dz37idScZ/kwrbjaDNTBrydC5lArn2x6m2r9JIn5cjI7hf3FZAfOkXSivxBTlpZ3hYW41XvHewLo3kKVIamX",
	}

	ssh_authorized_key { "sethplunkett-key-pair":
    		user => "chilled-beer",
		type => "ssh-rsa",
		key  => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDRX1li+8TVLDpe5hKN+30F/azIvkDy0fUO1Ae5X43sWWEdrn874Jj6+TJLhhg0stG80idOUBLPKiGRzQYPI1a+7EGGekSqK1MiLaGI/qTah6eryE9dStOJvpLUxKz8eqsO5+kDan5buR4XMplu6ts5VVznWMvUuQQoKesJ6O8PrHLzwSF5Gw/Okbslx/MJ/SF/Rd4rWA1Vtiw46R8nY6Udeg2VqvCaDnO6AJHrqmiENKK6Nl8zf00LjI3HdAIeZ2Dqf5TOk/gnhy9TkfBnPv8wcyKbnm5nTPoidxDrzR8D65WpXDwwh1/RuavOI3ioDCq7/8irEQUtz4iHEuJkmxEp",
	}

#Rumpus

	ssh_authorized_key { "ACG-key-pair":
		user=> "rumpus",
		type => "ssh-rsa",
		key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCdEemHGVVeacdNNYhmAG0FMn05Su+mXTMehI3xuFnl1BCU4dEv+x2VIQbwJDCY/YlfhSs1ozEab3bO2/CrcauqZYLUmvRW0oyKbgO2sFKFG2FOaEAejjy3nmhL5dmDiooQm0Ctk4rPE8Sf6Kt427yhErx462fHoGxJ/UVP4VGHHREA4MgdncyChCK/Zv5qj7M4woOV5Pw+mU2qjZVgIQrTjPUgO7P8PGhyYv4eBQTVvp6G7kbYafX+rYZUFUpyE84344WB5beLvFw+Am5imbm79oOaWJ4vUh75wfUnD0tBOXCMcCnlTinRX/cxTfs7eM61t3euMGn8ShzlaqBcMkTZ"
		}

	ssh_authorized_key { "pasha-key-pair-oregon":
		user => "rumpus",
		type => "ssh-rsa",
		key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCU0FxFGLvLP7eKHzPU2YsaHuBKVLO2dVnrSHWLplVZbPPF0V7r+D6kzkLrx0/xjJ965TmrTrzs0ODF6nWq3lNUkleUqtS+FFPuzXgJoL65LCQttnGdOhlaU2ntT0XX4teRgenQOuzUBH88F5jfK+jNiZnF7XcXJzIufgT/JLDRtknLpuda59HHtNyEQqWAyuWySj3NwYit+hG3qKzq8DOGZJIz2R1osCyHLqqYjpHQjyYK8cR1TI5CfDvvloGtk+2rmjphYFBlKLa6bjPUDC1qkzElpIrlKZUWsI+wuHHUb5ppm356CCf6uhnGInTvpkwr8tw1/i0LzAIc/JKeiPYf"
		}


	ssh_authorized_key { "waringkey":
		user => "rumpus",
		type => "ssh-rsa",
		key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCoamIc24g51gBC55Bbcq8AUi9ghA5Y7l3b8mnOQvX+kQJpfNt//cMbUXAhBMnjiv+cfFKi+klW8UUSI1SPccpV/nGbZH/k9XEKnpqK3XBRPUEHbA5QGujqOW7J44zjYKeXovH6PwQvZepjENI6ti3nBX7bvd8CRlMK3B3U4IJtghF8mz4FVLDjx1OOQAEDv5trzd7F0fRnWiuDVH9sUsVAeziUWhYKVmz9AhgSnnx8JSHXw6Rn5PGZyWDCttd0vG1KMPGULjc4nK5Oru3cu2Hsgb0dN0AjxbOwAamEto98zOe4HkO6oP71tOhk0KQmVKNgP/SpQ7Lh9gkTp2difDs/"
	}

	group { 'cis399':
		ensure => 'present',
		gid    => '502',
	}

}
