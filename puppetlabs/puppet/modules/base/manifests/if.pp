class base::if {
	if $::hostname =~ /^d-iplogic-com-ua(\d+)/ {
		notice("Hi server $0")   # will contain d-iplogic-com-ua + any digit after it(d-iplogic-com-ua1,2,3,4...)
	}

	$var2 = "var22222222222222"
}
