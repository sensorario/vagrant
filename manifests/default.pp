exec { "apt-get update":
    command => "/usr/bin/apt-get update"
}

package { "apache2":
    require => Exec["apt-get update"]
}

package { 'vim':
    ensure => present
}

package { 'tmux':
    ensure => present
}

file { "/var/www":
    ensure => link,
    target => "/vagrant/shared",
    force => true
}

include php
include mysql
