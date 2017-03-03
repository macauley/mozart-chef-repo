resource_name :add_user

property :username, String, name_property: true
property :ssh_keys, Array, default: []
property :shell, String, default: '/bin/bash'
property :groups, Array, default: []

default_action :create

action :create do
  user new_resource.username do
    supports manage_home: true
    shell new_resource.shell
  end
  
  directory "/home/#{new_resource.username}/.ssh" do
    owner new_resource.username
  end
  
  file "/home/#{new_resource.username}/.ssh/authorized_keys" do
    owner new_resource.username
    mode '644'
    content new_resource.ssh_keys.join("\n")OA
  end
  
end
