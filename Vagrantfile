# -*- mode: ruby -*-
# vi: set ft=ruby :

ip_addresses = {
  :mongo1       => '192.0.2.2',
  :mongo2       => '192.0.2.3',
  :mongo3      => '192.0.2.4'
}

Vagrant.configure('2') do |config|
  config.vm.box = 'precise64'
  config.vm.box_url = 'http://files.vagrantup.com/precise64.box'

  [ :mongo1, :mongo2, :mongo3 ].each do |component|
    config.vm.define component do |box|
      box.vm.network :private_network, ip: ip_addresses[component]
    end
  end

  config.vm.provision "ansible" do |ansible|
    ansible.inventory_path = "vagrant_hosts"
    ansible.playbook = "vagrant.yml"
  end

end
