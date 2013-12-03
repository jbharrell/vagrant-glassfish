class glassfish {
	require baseimage
	
	$glassfish_url = 'http://download.java.net/glassfish/4.0/release/glassfish-4.0.zip'
	$glassfish_install = "/opt"
	$glassfish_home = "/opt/glassfish4"
	$init_d = "/etc/init.d"
	$user = 'root'
	
	package { 'unzip':
		ensure => installed,
	}
	->
	package { 'openjdk-7-jdk':
		ensure => installed,
	}
	->
	exec { 'wget glassfish':
		command => "wget ${glassfish_url}",
		cwd => "${glassfish_install}",
		path => "/usr/bin",
		#user => $user,
	}
	->
	exec {'unzip glassfish':
		command => 'unzip glassfish-4.0.zip',
		cwd => "${glassfish_install}",
		path => "/usr/bin",
		#user => $user,
	}
	->
	file { "${init_d}/glassfish":
		owner => 'root',
		group => 'root',
		mode => '0744',
		source => 'puppet:///modules/glassfish/glassfish',
	}
	->
	exec { 'update-rd.d glassfish':
		command => 'update-rc.d glassfish defaults',
		path => "/usr/sbin",
	}
	->
	exec { 'start glassfish':
		command => "${init_d}/glassfish start",
	}
}
