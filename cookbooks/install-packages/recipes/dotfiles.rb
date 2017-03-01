#
# Cookbook:: install_packages
# Recipe:: dotfiles
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Install oh-my-zsh
git '/home/' + ENV['USER_TO_ADD'] + '/.oh-my-zsh' do
  repository 'https://github.com/robbyrussell/oh-my-zsh.git'
  user ENV['USER_TO_ADD']
  action :sync
end

# Install dotfiles
git '/home/' + ENV['USER_TO_ADD'] + '/dotfiles' do
  repository 'https://github.com/macauley/dotfiles.git'
  revision 'master'
  user ENV['USER_TO_ADD']
  action :sync
end

execute 'install_dotfiles' do
  cwd '/home/' + ENV['USER_TO_ADD'] + '/dotfiles'
  command './install'
  user ENV['USER_TO_ADD']
  live_stream true
  environment ({'HOME' => '/home/' + ENV['USER_TO_ADD']})
end
