class documents {

    file {'/tmp/testfile.txt':
        ensure   => present,
        mode     => '0644',
        content  => "This is another test to verify puppet catalogs can be pushed...\n",
    }
}
