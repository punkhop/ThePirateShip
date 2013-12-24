# -*- mode: ruby -*-
# vi: set ft=ruby :
# Copyright 2013 Brian Bischoff <admin@argilzar.com>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

#In *nix it is better to use 
USE_NFS=false

Vagrant.configure("2") do |config|
  #The ubuntu cloud image, will be downloaded for the first box
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/raring/current/raring-server-cloudimg-i386-vagrant-disk1.box"
  config.vm.box = "raring-i386-vagrant"
  
  #Default location for all the setting files, incomplete downloads and cache
  #You can not omit this unless you change the defaults in the provisioning scripts
  #The mount point should be /mnt/nzb always
  #If you do not change this then nzb folder will be created in current dir
  config.vm.synced_folder "nzb", "/mnt/nzb", type: "nfs"
  #Path to tvshow folder, you can use any mapping here or remove it but sickbeard is setup per default to use /media/video/TV
  config.vm.synced_folder "tv", "/media/video/TV", type: "nfs"
  config.vm.synced_folder "movies", "/media/video/Movies", type: "nfs"
  config.vm.synced_folder "music", "/media/video/Music", type: "nfs"

  config.vm.provision :shell, :path => "install_all.sh"
  
  # sabnzb
  config.vm.network :forwarded_port, host: 8080, guest: 8080
  # sickbeard
  config.vm.network :forwarded_port, host: 8081, guest: 8081
  # couchpotato
  config.vm.network :forwarded_port, host: 5050, guest: 5050
  # headphones
  config.vm.network :forwarded_port, host: 8181, guest: 8181
  # nzedb
  config.vm.network :forwarded_port, host: 10080, guest: 80
end