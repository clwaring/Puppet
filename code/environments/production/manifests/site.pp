node default {

}

node 'pagent1.idx.local' {
    #default IDX document package
    include documents

    #notify { hiera(motd::secret): }
}

node 'puppetagent2.idxlocal' {
}

node 'desktop-spare1.idx.local' {
  #default provider for windows machines
  include chocolatey
}

node 'idxs-mac-mini.local' {
}

node 'desktop-mfsueab' {
    #default provider for windows machines
    include chocolatey

    #default IDX software package
    include software
}
