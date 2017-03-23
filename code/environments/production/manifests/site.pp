node default {

}

node 'pagent1.idx.local' {
    include documents

    notify { hiera(motd::secret): }
}

node 'puppetagent2.idxlocal' {
    #notify { hiera(motd::secret): }
}

node 'desktop-spare1.idx.local' {
    include software::browsers::firefox
}

node 'idxs-mac-mini.local' {
    include software::browsers::firefox
}
