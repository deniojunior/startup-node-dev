VAGRANT_VERSION = "2"
PROJECT_NAME = "startup-node"


Vagrant.configure(VAGRANT_VERSION) do |config|
    config.vm.box = "bento/fedora-26"
    config.vm.box_version = "2.3.8"

    config.vm.hostname = PROJECT_NAME + "-dev"
    config.vm.synced_folder "./", "/vagrant"

    config.vm.network :private_network, ip: '192.168.50.50'

    config.vm.provider :virtualbox do |vb|
        vb.memory = "1024"
    end

    config.vm.provision :shell, path: 'bootstrap/install-packages.sh'
    #config.vm.provision :shell, path: 'bootstrap/setup-nginx.sh'

    config.vm.provision :shell, inline: 'chown vagrant.vagrant -R /home/vagrant'
    config.vm.synced_folder './', '/usr/local/'+PROJECT_NAME+"-dev"
end