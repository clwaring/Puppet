node default {

}

node 'pagent1.idx.local' {
    include documents

    notify { hiera(motd::secret): }
}

node 'puppetagent2.idxlocal' {
    notify { hiera(motd::secret): }
    notify { hiera(motd::message): }
}

node 'desktop-spare1.idx.local' {

}

node 'idxs-mac-mini.local' {

}
