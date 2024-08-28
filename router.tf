resource "openstack_networking_router_v2" "router_1" {
  name = "router_1"

  external_network_id = "f65987da-93e4-43fb-a141-f0f1d338bffd"  
}


resource "openstack_networking_router_interface_v2" "router_1_interface_1" {
  router_id = openstack_networking_router_v2.router_1.id
  subnet_id = openstack_networking_subnet_v2.minha_subnet.id  
   
  depends_on = [
   openstack_networking_subnet_v2.minha_subnet
  ]

}