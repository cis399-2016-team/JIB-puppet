class accounts {


	@accounts::virtual { 'ec2-user':
		uid		=> 500,
		sshkeytype	=> '',
		keyname		=> '',
		sshkey		=> '',
	}

	@accounts::virtual { 'orange-banana':
		uid             =>  506,
		sshkeytype	=> 'ssh-rsa',
		keyname		=> 'CIS399',
		sshkey		=> 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCx/EgedQlVAGuFLUNtrJfGYIB4ieO1YcrD3ssoOtVA97YgaLE5VA6J0aazUevfNzsbGhrocGM3QZnStrZdAAhd3fyx+SrPXxVldxwpX70jNJg0KoOUEL7hYpSI8bAqzXSkJhCrxrfZMfhrSPQcS4SyBn3DOTc9xce7D93QW7uO0feluY9BzXiScBgOdCHqlTvZroV4Me1pXZ6mPRWnOqwUMwBTFhcNDKbhsftSYmMtjWuucqjpWTHrRMxO4OGfJk/+IQjPgOxwMG8fZnhZ//OE7YL0thDN0hJ6Ko9I5azztepyOleU5lNgTAqGqRrayhspAby0/VM6/UKy7n+1sjdh',
  	}

	@accounts::virtual { 'team-a':
    		uid             =>  507,
		sshkeytype	=> 'ssh-rsa',
		keyname		=> 'zhibin-key-pair',
		sshkey		=> 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCxOAgiL2z7qRQ1cIHfmy8t/9nqEevGtAwiyHlFh0psj0Wfa0qAdkJVPafy8Nkhs+QXbkfPEl0tPR0I7fiFW4KP/ZWvOBDU2Bm1IHyn8NnO/mK2IY1B2qARjyfC0QiwE4pOlEJ/nUxTa3kpqrkI/lcMwGbxvptLYqgF10LecemY9vzd6MWhYTtfCgFPYThLHwihER/oFk3rnpIAO/roUYdc44ipnZt6bGtgJ4i1lcmLaQYMUT8E3PFjF3rGEprocyMMrl7pE7iqnIe/LSery9QKcJRARWmQ2JoITiwtHJ1loeT/IQPUayzbaM1oAmkUClx4TN96RBO1ZfPLz5TmyMDl',
	}

	ssh_authorized_key {"micah-key-pair":
		user => "team-a",
		type => "ssh-rsa",		
		key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCD3UJqrNj0QDly6MHV2tYfK+m12mq/jmCPfUAcaq1rh3vWl2hRUtC+Zk+AQQt7TMmByXO+fM8V6KfEYpSBygSf1yd2T/tvYtLmJ/70DbaiWoIbA5G2eOQlQE1W3YSvgwZ+FZC67jgC8iaU3Oon7n4PDHxWhElukFWFXfYy5nq4aNAgF6tlX/ETkXMjqRIEFbr2vD+HjTH3x0Svh2Sp5J2v1Vyn6dokIsk29zveN9tF3ZaSgwVUVGcwW167uAOKwDebQnfoXjHgYSRnUPEvptJoaHeeMSSvpwxrhOA8MeFSLG88nHffox7URq5oRoGxNsxux2lZUvpG9eD0/3i1aJ7f",
	}


	@accounts::virtual { 'caluyacostello':
                uid             =>  508,
		sshkeytype	=> 'ssh-rsa',
		keyname		=> 'costello-key-pair',
		sshkey		=> 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCPrg48+84u65bZqmcD9yRJd2ILijuiZY7+iFVgQtXi3HH2s0Pc807oo20lD9fVvjzMFlAUluAQ8GGaLAzTY3bN2iGDzvhtCrI0O9r6u/60WKmYmryuVXunTz28IiISH04AQhNvS3B4mAXE5ZlOtBONao15bQO9ulnH1/LWjtOhh/+XeF4TjyvctM5z+hU5BzGmH7zcPm3Uz9+bnq9yVqSBJXt9HSVba0TEzuQv8MIkZnXJmaSdVtyOY7MVqNo91UCD0IfBqvapt7iUXApU0Zkwoi/ybojz2bcjrf8EPE8GJ4cI6wQ957GuqoD7P2G7vJuQpF3A0fDtzGIbHvn33SKZ',
        }


        ssh_authorized_key { "elijahcaluya_key_pair":
        user => "caluyacostello",
	type => "ssh-rsa",
        key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCFr3mfY4/QWOsi2DowDDt9KoafoUFN2rdwEEK0Phq/jbhy8l397gIPxf4KWneIRydwX8hbTuLrk/9vbqOr4nL9joFGPql4h50+cM2awr0GFW17FqikYkPJSJ4VczNUzJIw8J9kTQEGZW31Ig0eKGCm1L1G0ARha+r3Zitk3Ed1W1RBT1wVfwokJVq3jzHTB8635tC1BQN0fGngKM21y5r4zSYio0+i/MbF+ObUbxrZvKwrejICEaj2FEZh6p/6ox1Oq+XiljT0qj6zt7l1HKT1O3P+xXxUYDms/fy2FCF/GNLmkep518PtEWGcAWkfJZQCc1ueECfY6KfMOre0r8jz",
	} 

	@accounts::virtual { 'that-one-team':
                uid             =>  509,
		sshkeytype	=> 'ssh-rsa',
		keyname		=> 'eewing-key-pair',
		sshkey		=> 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC+DamMOYW4Nzxc7BT6HVEc2MmfSd4w6d4SUkcs6JJ+toBDyiqV/kJsoqy6+idZeb7dKcyhJbcUjsGTRvzCyZ/h/WIH2IxEujB2LIuRoZFy09HBWSSN5bpjZO2W2/9SJ+kJsTO0PQNEGxDJUGPH1v2GzRqqLdGAidzrJ780Kdg9DwR7J+CKNts/GFck3ZKK+RWgtZUzsJEUqsZhYMMuiTsI70MH6iBg14WQ5vTTfhg2DPjckqx2y20lDz7qZeEa2uZLte/FFX1AMq8NQrFBUBzncU62OhNyYLeRzReiDA+WhsduwkyrhQqB2lr5LvTQgx3OgUUHdZRJn0/uXF8HpiVN',
        }


    ssh_authorized_key { "Quentillionaire@FINN":
        user => "that-one-team",
        type => "ssh-rsa",
        key =>  "AAAAB3NzaC1yc2EAAAADAQABAAABAQDRXDK0AELCMQXqQbkCU97JXBVUBPKrtEXTym/tZWGoc8cfXDBNOk1ooRUm07D8tc7zHs3zHibPD8UdeTCwd+jtqhvwamD9dLil8dlvCp03go65/3TrxocWxa2rDlx4uPqwWfM+Y/tKvybCGmg73r1EZwZ+WFooL/b+/0oOX+RY+UyMUX6f7/+dicFyMzr07E9aVHLwTdoR3ieHcEMU4OdeqICAWct2K6kdOpHonib0c55D6vwjNTkPzqNqhXj2bldaV3w6mr1XQP4SD4A7vrWLo7U8nUzkILKeF05/VvaU0eXEcQysv56Et07ZtLOb8nAYKpyqVzpbRxbO1L3U9Jx1",
    }

    ssh_authorized_key { "mike@mike-arch":
        user => "that-one-team",
        type => "ssh-rsa",
        key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDI8Mib9mG3LPmJ+faU6RBnv62pyaWkyHo7qwUnOtuAsKUafy4KhgfNGt1GtA+iuinolK2tGCCPhq4AHoi/uYz35trdDP5BmfSqcDOXf/og6D9AM8Pp/SvrJtab+mKixW25Xzes2r5DTDdne9t4akEdrFu0TX84v+JkoW9k1vffXxwx3d4z22vLoZFkelhGBwdU3QxP5OLBOJLUArSq9xPZ9KC1haFSMgGeUozfg0669EZ8huWKGoR9nyUOo4mFm0M84skDaNOqrEbndWMUXMdotOpigiaU235AcVyygHMMD0WUEQkYK2U9CD+fsnbQYz+GMyEhrvj4WoZhkSjLnJgh",
    }

    ssh_authorized_key { "Quent@DESKTOP-ER46L4L":
        user => "that-one-team",
        type => "ssh-rsa",
        key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCjLSZjv6S8XRccQVhYeIBQaioPCk0yDnawtpjm5H85bFTBBEBLbAf984ROzg/f7L0eUN5cowON1N+qJHCoAYm7PGxctMjpqnjzWmX49TgnT1c3dt8iGbee/dQZx5FxD3fIYqGjrlDvLFG9PrnpYv3t3UitWGHQkns40UZr98kova0u8ugi31NHvs54K/AYNbmu586OYTlbBuFUtJJoiCcfa1FeAjhXSTpRyCWkZfMLRO7sxKecHaChpdysZkyscpW8v6wjj7iZYmmyJdIPUD27kZMfT5+Nl/3rYZbG3M4Pili2I+px8EYZpK5RQjcCLNULtLsutz0wk7ac009SGJ4r",
	}

	@accounts::virtual { 'rumpus':
                uid             =>  510,
		sshkeytype	=> 'ssh-rsa',
		keyname		=> 'ACG-key-pair',
		sshkey		=> 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCdEemHGVVeacdNNYhmAG0FMn05Su+mXTMehI3xuFnl1BCU4dEv+x2VIQbwJDCY/YlfhSs1ozEab3bO2/CrcauqZYLUmvRW0oyKbgO2sFKFG2FOaEAejjy3nmhL5dmDiooQm0Ctk4rPE8Sf6Kt427yhErx462fHoGxJ/UVP4VGHHREA4MgdncyChCK/Zv5qj7M4woOV5Pw+mU2qjZVgIQrTjPUgO7P8PGhyYv4eBQTVvp6G7kbYafX+rYZUFUpyE84344WB5beLvFw+Am5imbm79oOaWJ4vUh75wfUnD0tBOXCMcCnlTinRX/cxTfs7eM61t3euMGn8ShzlaqBcMkTZ',
        }

	ssh_authorized_key { "pasha-key-pair-oregon":
		user => "rumpus",
		type => "ssh-rsa",
		key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCU0FxFGLvLP7eKHzPU2YsaHuBKVLO2dVnrSHWLplVZbPPF0V7r+D6kzkLrx0/xjJ965TmrTrzs0ODF6nWq3lNUkleUqtS+FFPuzXgJoL65LCQttnGdOhlaU2ntT0XX4teRgenQOuzUBH88F5jfK+jNiZnF7XcXJzIufgT/JLDRtknLpuda59HHtNyEQqWAyuWySj3NwYit+hG3qKzq8DOGZJIz2R1osCyHLqqYjpHQjyYK8cR1TI5CfDvvloGtk+2rmjphYFBlKLa6bjPUDC1qkzElpIrlKZUWsI+wuHHUb5ppm356CCf6uhnGInTvpkwr8tw1/i0LzAIc/JKeiPYf",
		}


	ssh_authorized_key { "waringkey":
		user => "rumpus",
		type => "ssh-rsa",
		key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCoamIc24g51gBC55Bbcq8AUi9ghA5Y7l3b8mnOQvX+kQJpfNt//cMbUXAhBMnjiv+cfFKi+klW8UUSI1SPccpV/nGbZH/k9XEKnpqK3XBRPUEHbA5QGujqOW7J44zjYKeXovH6PwQvZepjENI6ti3nBX7bvd8CRlMK3B3U4IJtghF8mz4FVLDjx1OOQAEDv5trzd7F0fRnWiuDVH9sUsVAeziUWhYKVmz9AhgSnnx8JSHXw6Rn5PGZyWDCttd0vG1KMPGULjc4nK5Oru3cu2Hsgb0dN0AjxbOwAamEto98zOe4HkO6oP71tOhk0KQmVKNgP/SpQ7Lh9gkTp2difDs/",
	}


	@accounts::virtual { 'chilled-beer':
                uid             =>  511,
		sshkeytype	=> 'ssh-rsa',
		keyname		=> 'chenders-key-pair-oregon',
		sshkey		=> 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCWR1HbA7kQtEHE2qHTQnuTNsEGQtz8cMg5HID4WaMwOdNKGYR4ARmXHhI6Lpn2/kQ97ay2j1M1tYZhJSsglqrsGRY+gxEyr3Yp5Aq4KVLqYEnvHV5cfRbpekD3zGULH2dri8C/c/Z8ASBNHmm3deLz1IiB2IetTZ3fCS3VAqvlEF6WIbXw13j5kGGHbPG/TFevdKXwQTAK75P1LaNx00vjTHPP03/nmwRItl3lLuYS8RXyrOtmJR/oxCWqu+WZCBV5Dz37idScZ/kwrbjaDNTBrydC5lArn2x6m2r9JIn5cjI7hf3FZAfOkXSivxBTlpZ3hYW41XvHewLo3kKVIamX',
        }

	ssh_authorized_key { "sethplunkett-key-pair":
    		user => "chilled-beer",
		type => "ssh-rsa",
		key  => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDRX1li+8TVLDpe5hKN+30F/azIvkDy0fUO1Ae5X43sWWEdrn874Jj6+TJLhhg0stG80idOUBLPKiGRzQYPI1a+7EGGekSqK1MiLaGI/qTah6eryE9dStOJvpLUxKz8eqsO5+kDan5buR4XMplu6ts5VVznWMvUuQQoKesJ6O8PrHLzwSF5Gw/Okbslx/MJ/SF/Rd4rWA1Vtiw46R8nY6Udeg2VqvCaDnO6AJHrqmiENKK6Nl8zf00LjI3HdAIeZ2Dqf5TOk/gnhy9TkfBnPv8wcyKbnm5nTPoidxDrzR8D65WpXDwwh1/RuavOI3ioDCq7/8irEQUtz4iHEuJkmxEp",
	}

	@accounts::virtual { 'stevev':
                uid             =>  512,
		sshkeytype	=> 'ssh-rsa',
		keyname		=> 'stevev-key-pair-oregon',
		sshkey		=> 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCrFq80b0ptexNiI6KP4hxww5d5RFm8djIpsdJqRZDyoyD5vaf7d30bTLef8su6stHuBBjKccMcUjNyu4BliJBXIy7bKVDllVB5oeLFizDahQcgqjYfzyqj16uEa7NLBW5/3ljLpPX8XEI7YFM/hg65JFgpQIAiBi2N6bGj9mQrh/51SpCO6FruQH8KVjDl/CLgbnFq9cDwRDAo4tvPO1b0MRVrvM8BbZbBUHqV/093jVXkwY+BxsU6cgOnHrSmoTnH4MqMXUI/ok31JORVbWW5NAz28Ag7V/NbDvRBIYicJOd9aqEST/L812+tmnE8iQzn3bZvv7v0E7FHneCS5Qpz',
        }


}

