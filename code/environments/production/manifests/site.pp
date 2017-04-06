# This files describes the all the nodes at IDX


#default nodes (any node not explicitly mentioned)
node default {
}


#conference nodes


#development nodes - ubuntu
node /(dev-)+(ubu-)+(\w+.)+(idx.local|idxlocal)/ {
  notify {hiera(motd::message):}
  hiera_include('classes')
}

#development nodes - windows
node /(dev-)+(win-)+(\w+.)+(idx.local|idxlocal)/ {
  notify {hiera(motd::message):}
  hiera_include('classes')
}


#executive nodes


#inventory nodes
node 'desktop-spare1.idx.local' {
  #default provider for windows machines
  include chocolatey
}


#laptop nodes - macos


#laptop nodes - windows
#grimlock
node 'desktop-1vb20lf.idxlocal' {
}

#macos nodes
node 'idxs-mac-mini.local' {
  notify {hiera(motd::message):}
}

node /(dev-)+(mac-)+(\w+.)+(idx.local|idxlocal)/ {
  notify {hiera(motd::message):}
  hiera_include('classes')
}


#vm nodes - ubuntu
node 'pagent1.idx.local' {
  #default IDX document package
  include documents
}

node 'puppetagent2.idxlocal' {
  #notify { hiera(motd::secret): }
}


#vm nodes - windows
node 'desktop-mfsueab' {
  #default provider for windows machines
  include chocolatey

  #default IDX software package
  include software
}
