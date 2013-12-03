class baseimage {
	exec { 'apt-get update':
		command => 'apt-get update',
		path => "/usr/bin",
	}
}
