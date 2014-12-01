class users {
  user { 'fundamentals':
    ensure => present,
    gid => 'staff',
    shell => '/bin/bash',
    managehome => true,
  }
  
  group { 'staff':
    ensure => present,
  }
}

  
