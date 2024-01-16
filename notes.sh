$ vagrant ssh master -- ip a s dev enp0s8 | awk '/inet /{print $2}' | cut -d/ -f1
192.168.56.16



curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC= --node-external-ip=192.168.56.16 --token 12345" sh - 


curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--node-external-ip 192.168.56.17" K3S_URL=https://192.168.56.16:6443 K3S_TOKEN=12345 sh -

curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--node-external-ip 192.168.56.18" K3S_URL=https://192.168.56.16:6443 K3S_TOKEN=12345 sh -

