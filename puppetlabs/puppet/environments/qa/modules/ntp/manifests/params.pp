class ntp::params {
	case $::operatingsystem {
                'Ubuntu': {
				$template = 'ntp_ubuntu.conf'
				$service_name = 'ntp'
				$default_servers = [
                                                 "0.ubuntu.pool.ntp.org iburst",
                                                 "1.ubuntu.pool.ntp.org iburst",
                                                "2.ubuntu.pool.ntp.org iburst",
                                                ]
			}
                'centos': {
				$template = 'ntp_centos.conf'
				$service_name = 'ntpd'
				$default_servers = [
						 "0.centos.pool.ntp.org iburst",
						 "1.centos.pool.ntp.org iburst",
						"2.centos.pool.ntp.org iburst",
						]
			}
                default: { fail ('OS ${::operatingsystem} doesnt supported') }
        }
	
	$package_name = "ntp"
}
