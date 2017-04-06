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

  exec { 'dpkg -i /opt/hipchat/HipChat4-4.29.4.1662-Linux.deb':
      command          => 'dpkg -i /opt/hipchat/HipChat4-4.29.4.1662-Linux.deb',
      path             => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  }

  package { 'libreoffice':
      ensure          => latest,
      provider        => hiera(provider),
  }

  exec { 'add-apt-repository ppa:unit193/encryption':
      command          => 'add-apt-repository ppa:unit193/encryption',
      path             => '/usr/bin',
  }

  exec { 'apt-get update':
      command          => 'apt-get update',
      path             => '/usr/bin',
  }

  exec { 'apt-get --assume-yes --allow-unauthenticated install veracrypt':
      command          => 'apt install veracrypt -y',
      path             => '/usr/bin',
  }

  package { 'veracrypt':
      ensure          => latest,
      provider        => hiera(provider),
  }

  package { 'vim':
      ensure          => latest,
      provider        => hiera(provider),
  }
}
