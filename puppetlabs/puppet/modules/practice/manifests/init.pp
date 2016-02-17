class practice {

	host {'webserver01':
		name => 'webserver01.mylabserver.com',
		ip   => '10.1.1.1',
		host_aliases => ['test1','test2','test3'],
		comment => 'This is comment',
	}
	
	host {'webserver5':
		name => 'test33',
		ip   => '10.3.3.3',

	}
}
