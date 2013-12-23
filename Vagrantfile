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
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/raring/current/raring-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.box = "raring-amd64-vagrant"
  
  #Default location for all the setting files, incomplete downloads and cache
  #You can not omit this unless you change the defaults in the provisioning scripts
  #The mount point should be /mnt/nzb always
  #If you do not change this then nzb folder will be created in current dir
  config.vm.share_folder "nzb", "/mnt/nzb", "nzb", :create => true, :nfs => USE_NFS
  #Path to tvshow folder, you can use any mapping here or remove it but sickbeard is setup per default to use /media/video/TV
  config.vm.share_folder "tv", "/media/video/TV", "Videos/TV", :create => true, :nfs => USE_NFS
  config.vm.share_folder "movies", "/media/video/Movies", "Videos/Movies", :create => true , :nfs => USE_NFS
  config.vm.share_folder "music", "/media/Music", "Music", :create => true, :nfs => USE_NFS
  
  config.vm.provision :shell, :path => "install_all.sh"
  
  # sabnzb
  config.vm.forward_port 8080, 8080
  # sickbeard
  config.vm.forward_port 8081, 8081
  # couchpotato
  config.vm.forward_port 5050, 5050
  # headphones
  config.vm.forward_port 8181, 8181
  # nzedb
  config.vm.forward_port 80, 10080
end