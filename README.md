# mozart-chef-repo
Mozart's chef.io server cookbooks and roles

1. Clone mozart-chef-repo
1. `cd mozart-chef-repo`
1. `mkdir .chef`
1. Create knife.rb file, see https://docs.chef.io/install_dk.html#manually-w-webui
1. Run `berks install` to download the chef-client cookbook and its dependencies.
1. Run `berks upload` to upload the chef-client cookbook and its dependencies to Chef server.
