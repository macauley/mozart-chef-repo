#
# Cookbook:: install_packages
# Recipe:: dotfiles
#
# Copyright:: 2017, The Authors, All Rights Reserved.

git '/home/macauley/dotfiles' do
  repository 'https://github.com/macauley/dotfiles.git'
  revision 'master'
  user 'macauley'
  action :sync
end
