class ntp ($package = $package) inherits ntp::params {
	#package {$package:
	#	ensure => present,
	#}

#	include ntp::params
#	include ntp::file
	notify {"The var ${package}":}
#	class { 'ntp::file': template => 'hello',}
	include ntp::service
}
