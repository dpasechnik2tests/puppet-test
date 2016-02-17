class motd::motd {
	
	$author = $motd::params::author
	
	file {'/etc/motd':
		ensure => file,
		owner  => root,
		group  => root,
		mode   => "0644",
		content => template('motd/motd.erb'),

	}
}
