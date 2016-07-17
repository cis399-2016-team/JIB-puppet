class web-content {

	file { "/var/www/html/index.html":
		ensure => present,
		source => "puppet:///modules/web-content/index.html",
	}

}
