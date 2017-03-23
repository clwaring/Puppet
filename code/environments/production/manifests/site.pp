node default {

}

node 'pagent1.idx.local' {
    include documents
    #notify { hiera(motd::secret): }
}

node 'puppetagent2.idxlocal' {
    #notify { hiera(motd::secret): }
}

node 'desktop-spare1.idx.local' {
    include chocolatey

    package { 'notepadplusplus':
        ensure          => latest,
        provider        => 'chocolatey',
    }
}

node 'idxs-mac-mini.local' {

}
