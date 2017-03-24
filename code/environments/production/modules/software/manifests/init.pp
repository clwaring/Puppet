class software {

  package { 'adobereader':
      ensure          => latest,
      provider        => 'chocolatey',
  }

  package { 'firefox':
      ensure          => latest,
      provider        => 'chocolatey',
  }

  package { 'googlechrome':
      ensure          => latest,
      provider        => 'chocolatey',
  }

  package { 'adblockpluschrome':
      ensure          => latest,
      provider        => 'chocolatey',
  }

  package { 'hipchat':
      ensure          => latest,
      provider        => 'chocolatey',
  }

  package { 'jre8':
      ensure          => latest,
      provider        => 'chocolatey',
  }

  package { 'malwarebytes':
      ensure          => latest,
      provider        => 'chocolatey',
  }

  package { 'notepadplusplus':
      ensure          => latest,
      provider        => 'chocolatey',
  }

  package { 'putty':
      ensure          => latest,
      provider        => 'chocolatey',
  }

  package { 'veracrypt':
      ensure          => latest,
      provider        => 'chocolatey',
  }

  package { 'winrar':
      ensure          => latest,
      provider        => 'chocolatey',
  }

  package { 'winscp':
      ensure          => latest,
      provider        => 'chocolatey',
  }
}
