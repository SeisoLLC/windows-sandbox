# -*- mode: ruby -*-
# vi: set ft=ruby :
NAME = "windows-sandbox"

Vagrant.configure("2") do |config|
  config.vm.box = "gusztavvargadr/windows-10"
  config.vm.hostname = NAME

  # Setup the virtualbox provider
  config.vm.provider "virtualbox" do |vb|
    vb.name = NAME

    # Customize the VM resources
    vb.memory = 4096
    vb.cpus = 2

    vb.customize ['modifyvm', :id, '--clipboard-mode', 'bidirectional']
  end

  config.vm.define NAME do |t|
  end
end

