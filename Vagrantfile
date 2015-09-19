Vagrant.configure(2) do |config|

  config.vm.box = "hashicorp/precise32"

  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.network "private_network", ip: "192.168.50.4"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "default.pp"
    puppet.module_path    = "modules"
  end

end
