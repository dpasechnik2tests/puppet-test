class ntp::file($template = $ntp::params::template, $servers = $ntp::params::default_servers) inherits ntp {

#	$template = $ntp::params::template
#	$servers = $ntp::params::default_servers

	notify {'TEMPLATE => ${template}':}
	file {'/etc/ntp.conf':
	ensure => file,
	require => Package['ntp'],
#	content => template("ntp/${template}.erb"),
	}
	
	
}
