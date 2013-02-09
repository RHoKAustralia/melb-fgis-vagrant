# -*- mode: ruby -*-
# vi: set ft=ruby :
#require 'berkshelf/vagrant'

Vagrant::Config.run do |config|
    config.vm.define :node_a do |node_a|
      node_a.vm.box = "opscode-ubuntu-12.04"
      node_a.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_chef-10.18.2.box"
      node_a.vm.provision :chef_solo do |chef|
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
    
    # config.vm.define :node_b do |node_b|
    #   node_b.vm.box = "opscode-ubuntu-12.04"
    #   node_b.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_chef-10.18.2.box"
    #   node_b.vm.provision :chef_solo do |chef|
    #       chef.roles_path = "roles"
    #       chef.add_role "postgis"
    #       chef.add_role "ruby"
    #       chef.add_role "fgis"
    #   end
    #   node_b.vm.network :hostonly, "192.168.1.11"
    # end
end
