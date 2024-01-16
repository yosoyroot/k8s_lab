Vagrant.configure("2") do |config|
  # Define the k3s master node
  config.vm.define "master" do |master|
    master.vm.box = "ubuntu/jammy64"
    master.vm.network "private_network", type: "dhcp"
    master.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
    end
    master.vm.provision "shell", path: "common_provision.sh"
  end

  # Define three k3s worker nodes
  (1..3).each do |i|
    config.vm.define "worker#{i}" do |worker|
      worker.vm.box = "ubuntu/jammy64"
      worker.vm.network "private_network", type: "dhcp"
      worker.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.cpus = 2
      end
      worker.vm.provision "shell", path: "common_provision.sh"
    end
  end
end
