class mytestmodule {
	file { '/tmp/mytestmodule2.conf':
		ensure => 'file',
		source => "puppet:///modules/mytestmodule/mycnf.conf",
	}
}
