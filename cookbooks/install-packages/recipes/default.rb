#
# Cookbook:: install_packages
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end

# Install zsh
package 'zsh'

# Install python
package 'python'

# Install git
package 'git'

# Install emacs
package 'emacs'

include_recipe "install-packages::dotfiles"
