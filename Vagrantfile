
$box_name = "ubuntu1404-desktop"
$cpus = 1
$memory = 2048

Vagrant.configure(2) do |config|

  config.vm.box = $box_name

  # config.ssh.private_key_path = ['vagrant.pem', File.join(ENV['HOME'], '.ssh', 'id_rsa')]
  # config.ssh.forward_agent = true

  # config.vm.network "private_network", ip: $vagrant_ip

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", $memory, "--cpus", $cpus]
    v.gui = true
  end

  config.vm.provision "shell", path: "packages.sh", run: "once"

end
