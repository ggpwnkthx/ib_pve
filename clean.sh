echo "mlx4_core" >> /etc/modules
echo "mlx4_ib" >> /etc/modules
echo "ib_umad" >> /etc/modules
echo "ib_uverbs" >> /etc/modules
echo "ib_ipoib" >> /etc/modules

modprobe mlx4_core
modprobe mlx4_ib
modprobe ib_umad
modprobe ib_uverbs
modprobe ib_ipoib

apt-get update
apt-get -y install opensm
update-rc.d -f opensm remove
update-rc.d opensm defaults
update-rc.d opensm enable
service opensm restart
