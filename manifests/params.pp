# Class: openjdk::params
class openjdk::params {
  case $::lsbdistid {
    'debian': {
      $headlesspackage = 'openjdk-6-jre-headless'
    }
    default: {
      notice("${::lsbdistid} not supported")
    }
  }
}
