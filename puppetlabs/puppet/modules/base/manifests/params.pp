class base::params {
       case $osfamily{   #facter fact!!!
                'RedHat': { $ssh_name = 'sshd' }
                'Debian': { $ssh_name = 'ssh' }
                default: { fail('Os UNSUPPORTED by puppet ssh') }
        }
	
	$local = 'local var'
}
