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

    package { 'winrar':
        ensure          => latest,
        provider        => 'chocolatey',
    }

    package { 'googlechrome':
        ensure          => latest,
        provider        => 'chocolatey',
    }

    package { 'firefox':
        ensure          => latest,
        provider        => 'chocolatey',
    }

    package { 'jre8':
        ensure          => latest,
        provider        => 'chocolatey',
    }

    package { 'jdk8':
        ensure          => latest,
        provider        => 'chocolatey',
    }

    package { 'adobereader':
        ensure          => latest,
        provider        => 'chocolatey',
    }

    package { 'putty':
        ensure          => latest,
        provider        => 'chocolatey',
    }

    package { 'malwarebytes':
        ensure          => latest,
        provider        => 'chocolatey',
    }

    package { 'winscp':
        ensure          => latest,
        provider        => 'chocolatey',
    }
}

node 'idxs-mac-mini.local' {

}
