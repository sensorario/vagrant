class php {

    $packages = [
        "php5"
    ]

    package { $packages:
        ensure => present,
        require => Exec['apt-get update']
    }

}
