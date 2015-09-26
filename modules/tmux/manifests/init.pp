class tmux {

    $packages = [
        "tmux"
    ]

    package { $packages:
        ensure => present,
        require => Exec['apt-get update']
    }

}
