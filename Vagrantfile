Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.synced_folder "./provision_files/configuration/emacs/.emacs.d", "/home/vagrant/.emacs.d", create: true
  config.vm.synced_folder "./provision_files/configuration/vim/.vim", "/home/vagrant/.vim", create: true
  config.vm.synced_folder "./workspace", "/home/vagrant/workspace", create: true, owner: "vagrant", mount_option: ["dmode=644", "fmode=644"]
  config.vm.synced_folder "./workspace", "/home/vagrant/testPerm", owner: "vagrant", mount_option: ["dmode=644", "fmode=644"] 
  
  config.vm.provision "file", source: "./provision_files/configuration/startup_shell_script/.profile", destination: "/home/vagrant/.profile"
  config.vm.provision "file", source: "./provision_files/configuration/emacs/.emacs", destination: "/home/vagrant/.emacs"
  config.vm.provision "file", source: "./provision_files/configuration/vim/.vimrc", destination: "/home/vagrant/.vimrc"
  config.vm.provision "file", source: "./provision_files/configuration/git/.gitconfig", destination: "/home/vagrant/.gitconfig"
  config.vm.provision "file", source: "./provision_files/configuration/ssh/config", destination: "/home/vagrant/.ssh/config"  
  config.vm.provision "file", source: "./provision_files/configuration/ssh/id_rsa", destination: "/home/vagrant/.ssh/id_rsa"
  config.vm.provision "file", source: "./provision_files/configuration/ssh/id_rsa.pub", destination: "/home/vagrant/.ssh/id_rsa.pub"
  config.vm.provision "file", source: "./Makefile", destination: "/home/vagrant/workspace/Makefile"
  
  config.vm.provision "shell", path: "provision.sh"
  
end
