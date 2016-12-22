Vagrant.configure(2) do |config|
  config.vm.box = "debian/contrib-jessie64"
  config.vm.network "private_network", type: "dhcp"
  config.vm.synced_folder ".", "/haskell"
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    #vb.gui = true
    # Customize the VM:
    vb.memory = "1024"
    vb.cpus = "1"
  end

  config.vm.provision "shell", inline: <<-SHELL
    sudo -i
    apt-get install -y vim git build-essential libgmp-dev
    wget https://haskell.org/platform/download/8.0.1/haskell-platform-8.0.1-unknown-posix--minimal-x86_64.tar.gz
    tar -xf haskell-platform-8.0.1-unknown-posix--minimal-x86_64.tar.gz
    ./install-haskell-platform.sh
  SHELL
  
end
