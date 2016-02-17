class filedemo {
	
	File {
		owner => 'root',
		group => 'wheel',
		mode  => '0660',
	}

	$homedir = "/root"
	$content = "my content"

	file {"$homedir/myfile1.txt":
		content => $content,
	}
	
	file {"$homedir/myfile2.txt":
		content => "my content",
		}

	file {"$homedir/myfile3.txt":
		content => "my file3",
		owner   => admin,
		group 	=> root,
	}

	file { '/root/motd':
		ensure		=> present,
#		content		=> 'This is text ADDED by CONTENT var inside puppet',
		source		=> 'puppet:///modules/filedemo/motd',
		owner		=> root,
		group		=> root,
		mode		=> '0644',
	}
	
	file { '/etc/motd': 
		ensure		=> link,
		target		=> '/root/motd',
	}
}
