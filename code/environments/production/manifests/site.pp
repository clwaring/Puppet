node default {

}

node 'pagent1.idx.local' {
    include documents
    include users

    notify { hiera(motd::message): }
}

node 'puppetagent2.idxlocal' {
    notify { hiera(motd::message): }
}

node 'desktop-spare1.idx.local' {

}

node 'idxs-mac-mini.local' {

}
