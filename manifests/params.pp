# Class: openjdk::params
class openjdk::params {
  case $::lsbdistid {
    'debian': {
      $packageheadless = 'openjdk-6-jre-headless'
    }
    'ubuntu': {
      $packageheadless = 'openjdk-7-jre-headless'
    }
    default: {
      notice("${::lsbdistid} not supported")
    }
  }
}
