resource "openstack_networking_port_v2" "instance01_eth0" {
  network_id = openstack_networking_network_v2.minha_rede.id
  name       = "instance01_eth0"
  fixed_ip {
     subnet_id  = openstack_networking_subnet_v2.minha_subnet.id
     ip_address = var.instance-01_eth0_ip
   }
  security_group_ids = [openstack_networking_secgroup_v2.my_security_group.id]

}


resource "openstack_compute_instance_v2" "linux-ubuntu-01" {
  name            = "linux-ubuntu-01"
  flavor_name     = var.instance_flavor  # flavor definido no arquivo variables.tf
  image_name      = var.instance_image   # image definida no arquivo variables.tf
  security_groups = [ openstack_networking_secgroup_v2.my_security_group.name ]
  key_pair        = openstack_compute_keypair_v2.my_key.name


  network {
    uuid = openstack_networking_network_v2.minha_rede.id
    port = openstack_networking_port_v2.instance01_eth0.id
  }

  depends_on = [
   openstack_networking_network_v2.minha_rede,
   openstack_networking_subnet_v2.minha_subnet,
   openstack_compute_keypair_v2.my_key
  
  ]
}