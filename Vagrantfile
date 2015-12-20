Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.synced_folder "./provision_files/configuration/emacs/.emacs.d", "/home/vagrant/.emacs.d", create: true
  config.vm.synced_folder "./provision_files/configuration/vim/.vim", "/home/vagrant/.vim", create: true
  
  #FOR Vagrant v1.7.4:
  #mount_option of synced_folder does not help so much because: only files with mode more open than fmode defined in mount_option will be restricted to fmode, file with mode less open than this one remain unchanged, 
  #mount_option of synced_folder has NO EFFECT with FOLDERS
  #synced_folder in Windows is UGLY because it sets the synced_folder to 777 and the background becomes green: UGLY synced_folders

  config.vm.synced_folder "./workspace", "/home/vagrant/workspace", create: true, owner: "vagrant", mount_option: ["dmode=775", "fmode=664"]
  config.vm.synced_folder "./testPerm", "/home/vagrant/testPerm", owner: "vagrant", mount_option: ["dmode=775", "fmode=664"] 
  
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
