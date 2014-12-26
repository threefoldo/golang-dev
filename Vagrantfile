
$box_name = "ubuntu1404-desktop"
$cpus = 1
$memory = 2048

Vagrant.configure(2) do |config|

  config.vm.box = $box_name

  config.ssh.private_key_path = ['vagrant.pem', File.join(ENV['HOME'], '.ssh', 'id_rsa')]
  config.ssh.forward_agent = true

  # config.vm.network "private_network", ip: $vagrant_ip

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", $memory, "--name", $domain_name,"--cpus", $cpus]
    v.gui = true
  end

  config.vm.provision "shell", inline <<-SHELL
    sudo sed -i 's/us.archive.ubuntu.com/mirrors.163.com/g' /etc/apt/sources.list
    sudo apt-get update
    sudo apt-get install -y git emacs24 screen
  SHELL

end
