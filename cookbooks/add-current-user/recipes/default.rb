#
# Cookbook:: add-current-user
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Get my public keys from Github
github_keys = begin
                Chef::HTTP.new('https://github.com').get("macauley.keys")
              rescue Exception
                ''
              end

# I like ssh, and add my to the admin and sudo groups
add_user ENV['USER_TO_ADD'] do
  ssh_keys github_keys.split("\n")
  shell '/usr/bin/zsh'
  groups ['admin', 'sudo']
end
