Installs openjdk

Example Usage:

node 'foo' {
  class { 'openjdk': 
    packagetype => 'headless',
  }
}
