Vagrant.configure('2') do |config|
  config.vm.define 'app1' do |app1|
    app1.vm.box = 'app1'
    app1.vm.box = 'centos/7'
    app1.vm.provision 'chef_client' do |chef|
      chef.provisioning_path = '/etc/chef'
      chef.chef_server_url = 'https://chef-server/organizations/firstpay'
      chef.validation_key_path = '/home/fabiom/Virtualbox/Vagrant/firstpay/chef-repo/.chef/firstpay-validator.pem'
      chef.validation_client_name = 'firstpay-validator'
      chef.add_recipe 'docker-manager::docker_install'
      chef.environment = 'development'

      chef.delete_node = true
      chef.delete_client = true
    end
  end
end
