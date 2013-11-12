# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest
  config.ssh.forward_agent = true

  config.vm.provider :virtualbox do |provider|
    provider.customize ["modifyvm", :id, "--memory", "1024"]
    config.vm.box = "precise64"
  end

 
  def config.machine(name, ip, roles = [])
    self.vm.define name do |node|
      node.vm.network :private_network, ip: ip
      chef_solo(name, node, roles)
    end
  end

  # Machines
  config.machine("capistrano", "10.123.61.10", %w(capistrano))
 
  def chef_solo(name, node, additional_roles = [])
    node.vm.provision :chef_solo do |chef|
      chef.roles_path = "roles"
      chef.data_bags_path = "data_bags"
      chef.node_name = "capistrano"     
      chef.add_role "nginx"
    end
  end

end

