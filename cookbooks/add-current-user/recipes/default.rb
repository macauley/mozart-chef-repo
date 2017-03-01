#
# Cookbook:: add-current-user
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

user ENV['USER_TO_ADD'] do
  shell '/usr/bin/zsh'
end

group 'admin' do
  action :modify
  members ENV['USER_TO_ADD']
  append true
end

group 'sudo' do
  action :modify
  members ENV['USER_TO_ADD']
  append true
end
