# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu1804"
  config.ssh.forward_agent = true

  # prisma
  config.vm.network "forwarded_port", guest: 4466, host: 4466
  # postgres
  config.vm.network "forwarded_port", guest: 5432, host: 5432
  # node
  config.vm.network "forwarded_port", guest: 4444, host: 4444

  config.vm.synced_folder "~/Developer", "/home/vagrant/projects"

  config.vm.provider "virtualbox" do |vb|
    # Customize the amount of memory on the VM:
    vb.memory = "4048"
  end

  config.vm.provision :docker

  # Install Docker Compose
  # First, install required plugin https://github.com/leighmcculloch/vagrant-docker-compose:
  # vagrant plugin install vagrant-docker-compose
  config.vm.provision :docker_compose

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    # sudo apt-get -y upgrade
  SHELL

  config.vm.provision :shell, :path => "provision/git.sh"
  config.vm.provision :shell, :path => "provision/yarn.sh"
  config.vm.provision :shell, :path => "provision/python.sh"

end
