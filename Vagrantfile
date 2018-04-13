
required_plugins = %w( vagrant-share vagrant-vbguest )
required_plugins.each do |plugin|
  exec "vagrant plugin install #{plugin};vagrant #{ARGV.join(" ")}" unless Vagrant.has_plugin? plugin || ARGV[0] == 'plugin'
end

Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"
  config.vm.network "private_network", ip: "192.168.94.3"

  config.vm.provider "virtualbox" do |vbox|
    vbox.name = "semantic_dev"
    vbox.customize ["modifyvm", :id, "--memory", "2048"]

  config.vm.synced_folder ".", "/vagrant", id: "vagrant-root",
    owner: "www-data",
    group: "www-data",
    type: "virtualbox",
    mount_options: ["dmode=775,fmode=755"]
  end

  config.vm.provision :shell, path: "bootstrap.sh"
end
