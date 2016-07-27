class accounts {

	@accounts::virtual { 'orange-banana':
		uid             =>  506,
  	}

	ssh_authorized_key { "CIS399":
		ensure => 'present',
		user => "orange-banana",
		type => "ssh-rsa",
		key  => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCx/EgedQlVAGuFLUNtrJfGYIB4ieO1YcrD3ssoOtVA97YgaLE5VA6J0aazUevfNzsbGhrocGM3QZnStrZdAAhd3fyx+SrPXxVldxwpX70jNJg0KoOUEL7hYpSI8bAqzXSkJhCrxrfZMfhrSPQcS4SyBn3DOTc9xce7D93QW7uO0feluY9BzXiScBgOdCHqlTvZroV4Me1pXZ6mPRWnOqwUMwBTFhcNDKbhsftSYmMtjWuucqjpWTHrRMxO4OGfJk/+IQjPgOxwMG8fZnhZ//OE7YL0thDN0hJ6Ko9I5azztepyOleU5lNgTAqGqRrayhspAby0/VM6/UKy7n+1sjdh",
	}

	ssh_authorized_key { "jstuemke-key-pair-oregon":
		ensure => 'present',
		user => "orange-banana",
		type => "ssh-rsa",
		key  => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCPnelozzko4JcJxfgbm0Ib7h8C0dDpV5NvuKKuzVabFRSlc8MTXUz2aLAaiZzqMQQFdnxOLz0xJrQIpQIGRFiTvBfP1g5fCcHTRcjumv8e5qL+ARGbYgoCz+CMTsF71ZT4Y5U0nJaBuzgKiCNtXjG2Hma/pMT7dEWeUZiOymHihVzUkMa8kAiLkzRJB94ZCv8QeYyO7+cJsjbce4FwBQg+r9+Rwoj11eVj4fOvA1eOhp2d+S31E4GaaEfYrM3lRKQZQLLdygKxiHA3geHMJAJLQaiF3scfm/5NofTS6OxRsoC3q54Q6JXH104okrPYBt/EMRMEY3bO8FI364+LDU4J",
}

	@accounts::virtual { 'team-a':
    		uid             =>  507,
	}

	@accounts::virtual { 'caluyacostello':
                uid             =>  508,
        }

	@accounts::virtual { 'that-one-team':
                uid             =>  509,
        }

	@accounts::virtual { 'rumpus':
                uid             =>  510,
        }

	@accounts::virtual { 'chilled-beer':
                uid             =>  511,
        }

	@accounts::virtual { 'stevev':
                uid             =>  512,
        }


}

