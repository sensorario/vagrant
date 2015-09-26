class vim {

    $packages = [
        "vim"
    ]

    package { $packages:
        ensure => present,
        require => Exec['apt-get update']
    }

}
