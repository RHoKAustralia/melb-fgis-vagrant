# -*- mode: ruby -*-
# vi: set ft=ruby :
#require 'berkshelf/vagrant'

Vagrant::Config.run do |config|
  config.vm.define :node_a do |node_a|
    node_a.vm.box = "opscode-ubuntu-12.04"
    node_a.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_chef-10.18.2.box"
      
    config.vm.customize ["modifyvm", :id, "--memory", 256]
    node_a.vm.provision :chef_solo do |chef|
        chef.cookbooks_path = ["cookbooks", "site-cookbooks"]
        chef.roles_path = "roles"
        chef.add_role "fgis"
        chef.json = JSON.load('{
                          "postgresql": {
                            "password": {
                              "postgres": "iloverandompasswordsbutthiswilldo"
                            }
                          }
                        }')
    end
    node_a.vm.network :hostonly, "192.168.1.10"
  end
end
