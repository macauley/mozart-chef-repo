#
# Cookbook:: sudo_nopasswd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Add line to sudoers file to allow anybody in admin group to sudo without a password
file '/etc/sudoers.d/admin-nopasswd' do
  content '%admin ALL=(ALL:ALL) NOPASSWD:ALL'
  mode '0440'
  owner 'root'
  group 'root'
end

