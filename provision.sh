#! /bin/sh

echo "Running command to update package list and install software with redirect StdOut and StdErr to /dev/null"

echo "[Updating] package list"
apt-get update > /dev/null 2>&1
echo "[Done] Updating package list!"

echo "[Installing] build-essential"
apt-get install -y build-essential > /dev/null 2>&1
echo "[Done] Installing build-essential"

#TO DO: need to verify if the bin exist for the following software 
echo "[Installing] emacs"
apt-get install -y emacs > /dev/null 2>&1
echo "[Done] Installing emacs"

echo "[Installing] vim"
apt-get install -y vim > /dev/null 2>&1
echo "[Done] Installing vim"

echo "[Installing] git"
apt-get install -y git > /dev/null 2>&1
echo "[Done] Installing git"

echo "[Installing] tig"
apt-get install -y tig > /dev/null 2>&1
echo "[Done] Installing tig"

echo "[Configuring] ssh keys: change mode to private"
chmod 600 /home/vagrant/.ssh/id_rsa
chmod 600 /home/vagrant/.ssh/id_rsa.pub
echo "[Done] configuring ssh keys"

echo "Done provisioning of file provision.sh"