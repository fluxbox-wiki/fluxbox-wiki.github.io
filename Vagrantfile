# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "vagrant-fedora20"
  config.vm.box_url = "https://dl.dropboxusercontent.com/u/15733306/vagrant/fedora-20-netinst-2014_01_05-minimal-puppet-guestadditions.box"

  # If you have errors about importing the ovf when doing
  # a vagrant up make sure you are on 4.3 or newer virtualbox
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048", "--cpus", "2"]
  end
  # I have seen this take 40 mins before. That was on a Dell Precision mobile workstation
  # with an Intel(R) Core(TM) i7-2760QM CPU @ 2.40GHz an SSD and 32G of RAM running Debian
  # on virtualbox 4.3.1.2
  #
  # You can switch this from using cabal to using yum and it will speed up a lot,
  # but the pandoc version will be older.
  config.vm.provision "shell", path: 'provision_scripts/provision.sh'
end
