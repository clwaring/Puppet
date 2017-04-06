class software::windows {

  package { 'adobereader':
      ensure          => latest,
      provider        => hiera(provider),
  }

  package { 'firefox':
      ensure          => latest,
      provider        => hiera(provider),
  }

  package { 'googlechrome':
      ensure          => latest,
      provider        => hiera(provider),
  }

  package { 'adblockpluschrome':
      ensure          => latest,
      provider        => hiera(provider),
  }

  package { 'hipchat':
      ensure          => latest,
      provider        => hiera(provider),
  }

  package { 'jre8':
      ensure          => latest,
      provider        => hiera(provider),
  }

  package { 'malwarebytes':
      ensure          => latest,
      provider        => hiera(provider),
  }

  package { 'notepadplusplus':
      ensure          => latest,
      provider        => hiera(provider),
  }

  package { 'putty':
      ensure          => latest,
      provider        => hiera(provider),
  }

  package { 'veracrypt':
      ensure          => latest,
      provider        => hiera(provider),
  }

  package { 'winrar':
      ensure          => latest,
      provider        => hiera(provider),
  }

  package { 'winscp':
      ensure          => latest,
      provider        => hiera(provider),
  }
}

class software::ubuntu {

  package { 'chromium-browser':
      ensure          => latest,
      provider        => hiera(provider),
  }

  package { 'firefox':
      ensure          => latest,
      provider        => hiera(provider),
  }

  package { 'git':
      ensure          => latest,
      provider        => hiera(provider),
  }

  file { '/opt/hipchat/':
      ensure          => directory,
  }

  file { "/opt/hipchat/HipChat4-4.29.4.1662-Linux.deb":
      owner           => root,
      mode            => '644',
      ensure          => present,
      source          => "https://atlassian.artifactoryonline.com/atlassian/hipchat-apt-client/pool/HipChat4-4.29.4.1662-Linux.deb"
  }

  package { 'hipchat4':
      ensure          => latest,
      provider        => hiera(provider),
      source          => "/opt/hipchat/HipChat4-4.29.4.1662-Linux.deb"
  }


  package { 'libreoffice':
      ensure          => latest,
      provider        => hiera(provider),
  }

  exec { 'add-apt-repository ppa:unit193/encryption':
      command          => 'add-apt-repository ppa:unit193/encryption',
      path             => '/bin',
  }

  exec { 'apt update':
      command          => 'apt update',
      path             => '/bin',
  }

  exec { 'apt install veracrypt':
      command          => 'apt install veracrypt',
      path             => '/bin',
  }

  package { 'veracrypt':
      ensure          => latest,
      provider        => hiera(provider),
      #require         => [ Exec['add-apt-repository ppa:unit193/encryption'], Exec['apt update'], Exec['apt install veracrypt']],
  }

  package { 'vim':
      ensure          => latest,
      provider        => hiera(provider),
  }
}
