class software {

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
