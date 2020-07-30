# -*- mode: ruby -*-
# vi: set ft=ruby :
NAME = "windows-sandbox"

def gui_bool?
  !ENV.fetch('GUI', '').empty?
end

Vagrant.configure("2") do |config|
  config.vm.box = "gusztavvargadr/windows-10"
  config.vm.box_url = "https://app.vagrantup.com/gusztavvargadr/boxes/windows-10"
  config.vm.hostname = NAME

  # Setup the virtualbox provider
  config.vm.provider "virtualbox" do |vb|
    vb.name = NAME

    # Customize the VM resources
    vb.memory = 4096
    vb.cpus = 2

    vb.customize ['modifyvm', :id, '--clipboard-mode', 'bidirectional']
    vb.gui = gui_bool?
  end

  # WSL install
  config.vm.provision "shell", privileged: "true", inline: <<-SHELL
    dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
    dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
  SHELL

  # Reboot
  config.vm.provision :reload

  # Used to set the Vagrant machine name
  config.vm.define NAME do |t|
  end
end

