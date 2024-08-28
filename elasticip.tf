# Alocação de um Floating IP
resource "openstack_networking_floatingip_v2" "instance01_floating_ip" {
  pool = "public-net"
}
    
resource "openstack_networking_floatingip_associate_v2" "instance_fip_ip_association" {
  floating_ip = openstack_networking_floatingip_v2.instance01_floating_ip.address
  port_id     = openstack_networking_port_v2.instance01_eth0.id

   depends_on = [
    openstack_compute_instance_v2.linux-ubuntu-01,
    openstack_networking_floatingip_v2.instance01_floating_ip,
    openstack_networking_port_v2.instance01_eth0
   ]
}
