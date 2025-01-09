# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/testing64"
  config.vm.provider "libvirt" do |vb, override|
    vb.memory = 8*1024
    vb.cpus = 4
  end

  config.vm.synced_folder './', '/vagrant', type: 'sshfs'

  config.vm.provision "shell", inline: <<-SCRIPT
    apt-get update
    apt-get install -y --no-install-recommends git nodejs npm podman-docker uidmap htop make jq
    npm install -g @devcontainers/cli
  SCRIPT
end
