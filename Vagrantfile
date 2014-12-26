
$box_name = "ubuntu1404-desktop"
$cpus = 1
$memory = 2048
$workspace = "/srv"

Vagrant.configure(2) do |config|
  config.vm.box = $box_name

  config.ssh.private_key_path = ['vagrant.pem', File.join(ENV['HOME'], '.ssh', 'id_rsa')]
  config.ssh.forward_agent = true
  config.vm.network "private_network", ip: $vagrant_ip
  config.vm.synced_folder "./", "/srv/#{org}", :nfs => { :mount_options => ["dmode=777","fmode=777"] }
  config.vm.synced_folder "#{$workspace}/go", "/srv/go", :nfs => { :mount_options => ["dmode=777","fmode=777"] }
  config.vm.synced_folder "#{$workspace}/packer-image-scripts", "/srv/packer-image-scripts", :nfs => { :mount_options => ["dmode=777","fmode=777"] }
  config.vm.synced_folder "#{$workspace}/packer-shell-scripts", "/srv/packer-shell-scripts", :nfs => { :mount_options => ["dmode=777","fmode=777"] }

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", $memory, "--name", $domain_name,"--cpus", $cpus]
    # v.gui = true
  end
end
