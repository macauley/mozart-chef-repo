#
# Cookbook:: install_packages
# Recipe:: dotfiles
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Install oh-my-zsh
git '/home/macauley/.oh-my-zsh' do
  repository 'git://github.com/robbyrussell/oh-my-zsh.git'
  user 'macauley'
  action :sync
end

# Install dotfiles
git '/home/macauley/dotfiles' do
  repository 'https://github.com/macauley/dotfiles.git'
  revision 'master'
  user 'macauley'
  action :sync
end

execute 'install_dotfiles' do
  cwd '/home/macauley/dotfiles'
  command './install'
  user 'macauley'
  live_stream true
  environment ({'HOME' => '/home/macauley'})
end
