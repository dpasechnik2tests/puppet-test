class base::ssh inherits base::params {
#	case $osfamily{   #facter fact!!!
#		'RedHat': { $ssh_name = 'sshd' }
#		'Debian': { $ssh_name = 'ssh' }
#		default: { fail('Os UNSUPPORTED by puppet ssh') }
#	}

#	$ssh_name = $osfamily ? { 		#condition IF
#		'RedHat' => 'sshd',
#		'Debian' => 'ssh',
#		default => 'value',
#	}	

	package { 'openssh-package':
		name	=> 'openssh-server',
		ensure 	=> present,
#		before	=> File['/etc/ssh/sshd_config'],
	}

	file { '/etc/ssh/sshd_config':
		ensure 	=> file,
		owner  	=> root,
		group  	=> root,
		require => Package['openssh-package'],
		source 	=> 'puppet:///modules/base/sshd_config',
		notify  => Service['ssh-service-name-2'],
	}
	
	service { 'ssh-service':
		name   => $ssh_name,
		ensure => running,
		alias  => "ssh-service-name-2",
		enable => true,
#		subscribe => File['/etc/ssh/sshd_config'],
	}

#$topscope = "top"
#$nodescope = "node"
$test = "test variable"

#	notify { "${local}" :}
#	notify {"${::var}":}
#	notify { "${::topscope} is topscope" :}
#	notify { "${::nodescope} is nodescope" :}
#	notify {"{$base::if::var2} is var2" :}

}
