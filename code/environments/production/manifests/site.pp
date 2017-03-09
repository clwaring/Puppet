file {'/tmp/it_works.txt':
    ensure   => present,
    mode     => '0644',
    content  => "It works on ${ipaddress_eth0}!\n",
}

file {'/tmp/test2.txt':
    ensure    => present,
    mode      => '0644',
    content   => "This is another test to verify that puppet is working. It is.\n",
}
