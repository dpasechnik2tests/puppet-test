class base::variables {
#	file {'/tmp/test.txt':
#		content => $topscope,
#	}

	$localvar = "localvar"
	
	
	#notify {"${base::ssh::test}":}

#	notify {"Message from elsewhere: $topscope":}
#	notify {"Message from elsewhere2: $nodescope":}
	notify {"${localvar} is my 3":}
	notify {"${::topscope} is my 1":}
	notify {"${nodescope} is my 2":}
	notify {"${::operatingsystem} is your os":}
}
