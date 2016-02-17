define apache::vhost ($port,$document_root,$server_name,$vhost_name='*',$vhost_dir) {

	File {
		mode   => 0677,
		
	}

	$default_index = "index_${server_name}_${port}"
	$default_config = "config_${server_name}_${port}"	

	file { $document_root:
		ensure  => directory,
		recurse => true,
		before  => File[$default_index],
	}

	file { $default_index:
		path    => "${document_root}/index.html",
		ensure  => file,
		content => template('apache/index.html.erb'),
		before  => File[$default_config],
	}

	file { $default_config:
		path     => "${vhost_dir}/${server_name}.conf",
		content  => template('apache/vhost.conf.erb'),
		require  => Package['apache'],
		notify   => Service['apache'],
	}
}
