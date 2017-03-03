#
# Cookbook:: add-current-user
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

add_user ENV['USER_TO_ADD'] do
  ssh_keys [ENV['USER_SSH_KEY']]
  shell '/usr/bin/zsh'
  groups ['admin', 'sudo']
end
