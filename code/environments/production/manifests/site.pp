node default {

}

node 'pagent1.idx.local' {
    include documents

    notify { hiera(motd::message): }
}

node 'puppetagent2.idxlocal' {
    class { 'hiera':
        hierarchy => [
            '%{environment}/%{calling_class}',
            '%{environment}',
            'common',
        ],
        eyaml        => true,
    }
}

node 'desktop-spare1.idx.local' {

}

node 'idxs-mac-mini.local' {

}
