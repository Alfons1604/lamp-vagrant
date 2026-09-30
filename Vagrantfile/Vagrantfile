# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/bookworm64"
  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.provision "install_packages",
    type: "shell",
    path: "scripts/01_install_packages.sh"

  config.vm.provision "configure_lamp",
    type: "shell",
    path: "scripts/02_configure_lamp.sh"
end