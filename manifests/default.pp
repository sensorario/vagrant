exec { "apt-get update":
    command => "/urs/bin/apt-get update"
}

package { "apache2":
    require => Exec["apt-get update"],
}

file { "/var/www":
    ensure => link,
    target => "/vagrant",
    force  => true,
}
