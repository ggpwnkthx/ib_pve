echo "mlx4_core" >> /etc/modules
echo "mlx4_ib" >> /etc/modules
echo "rdma_ucm" >> /etc/modules
echo "ib_umad" >> /etc/modules
echo "ib_uverbs" >> /etc/modules
echo "ib_ipoib" >> /etc/modules

modprobe mlx4_core
modprobe mlx4_ib
modprobe rdma_ucm
modprobe ib_umad
modprobe ib_uverbs
modprobe ib_ipoib

apt-get update
apt-get -y install opensm
update-rc.d -f opensm remove
update-rc.d opensm defaults
update-rc.d opensm enable
service opensm restart

# Add the following to IB interfaces in /etc/network/interfaces
#pre-up echo connected > /sys/class/net/ib0/mode
#mtu 65520
