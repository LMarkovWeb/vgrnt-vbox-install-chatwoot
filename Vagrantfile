# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure("2") do |config|

  config.vm.box = "peru/ubuntu-20.04-desktop-amd64"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "4096"
    vb.cpus = 2
  end

  
  # ispmanager
  config.vm.define "chatwoot" do |chatwoot|
    chatwoot.vm.hostname = 'chatwoot.loc'
    chatwoot.vm.network "private_network", ip: "192.168.20.60"
    chatwoot.vm.provision "shell", path: "scripts/install.sh"
    chatwoot.vm.network "forwarded_port", id: "chatwoot", 
      host: 3030, host_ip: "127.0.0.10", guest_ip:"10.0.2.15", guest: 3000,  protocol: "tcp"
  end
end