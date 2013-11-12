# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.provider :virtualbox do |provider|
    provider.customize ["modifyvm", :id, "--memory", "1024"]
    config.vm.box = "precise64"
  end

  config.vm.define :capistrano do |node|
    node.vm.network :private_network, ip: "10.123.61.10"
    node.vm.hostname = 'firstappserver.com'
  end

end

