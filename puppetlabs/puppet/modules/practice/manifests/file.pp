class practice::file {

		file {'motd':
			path	=> '/etc/motd',
			content => "wellcome to my server",
		}

		file {'/etc/motd':
			path    => '/etc/motd',
			content => "wellcome to myserver2!!" ,
		}

}
