class mysql {

    $packages = [
        "mysql-server"
    ]

    package { $packages:
        ensure => present,
        require => Exec['apt-get update']
    }

}
