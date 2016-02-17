class apache(
	$package_name = $apache::params::package_name,
	$service_name = $apache::params::service_name,
	$vhost_dir    = $apache::params::vhost_dir,
	$conf_dir     = $apache::params::conf_dir,
	$document_root = $apache::params::document_root,
	$server_name  = $apache::params::server_name,
	$log_dir      = $apache::params::log_dir,
) inherits apache::params {
include apache::package
include apache::service


file {$log_dir:
	ensure  => directory,
	recurse => true,
}

apache::vhost {'default':
	port 	      => 80,
	document_root => $document_root,
	server_name   => $server_name,
	vhost_dir     => $vhost_dir,
}

#apache::vhost {'d-iplogic-com-ua3':
#        port          => 80,
#        document_root => "${document_root}/d-iplogic-com-ua3.mylabserver.com",
#        server_name   => "d-iplogic-com-ua3.mylabserver.com",
#        vhost_dir     => $vhost_dir,
#}

}
