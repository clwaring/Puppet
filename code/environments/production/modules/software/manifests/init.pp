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

  file { '/opt/veracrypt/':
      ensure          => directory,
  }

  file { "/opt/veracrypt/veracrypt-1.19-setup.tar.bz2":
      owner           => root,
      mode            => '644',
      ensure          => present,
      source          => "https://veracrypt.codeplex.com/downloads/get/1614079"
  }

  package { 'veracrypt':
      ensure          => latest,
      provider        => hiera(provider),
      source          => "/opt/veracrypt/veracrypt-1.19-setup.tar.bz2"
  }

  package { 'vim':
      ensure          => latest,
      provider        => hiera(provider),
  }
}
