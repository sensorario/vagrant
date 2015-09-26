exec { "apt-get update":
    command => "/usr/bin/apt-get update"
}

package { "apache2":
    require => Exec["apt-get update"]
}

file { "/var/www":
    ensure => link,
    target => "/vagrant/shared",
    force => true
}

include php
include mysql
include vim
include tmux
