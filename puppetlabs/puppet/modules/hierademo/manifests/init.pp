class hierademo ($domain_name="default",$api_key="default_api_key") {
	$domainname = hiera_array('domain_name')	
	notify {"The hiera domain_name is: ${domainname}":}
	notify {"The domain name val is: ${domain_name}": }
	notify {"The api key is: $(api_key)": }

}
