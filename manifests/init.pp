# Class: openjdk
#
# Actions:
#
#   Installs the Open Java Development Kit JRE
class openjdk ( $packagetype='',
                $ensure='latest') {

  include openjdk::params

  case $packagetype {
    'headless': { $package = $openjdk::params::packageheadless }
    default: {}
  }
  package { $package:
    ensure => $ensure,
  }

}
