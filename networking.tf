resource "openstack_networking_network_v2" "minha_rede" {
  name = "minha_rede"
}

resource "openstack_networking_subnet_v2" "minha_subnet" {
  name            = "minha_subnet"
  network_id      = openstack_networking_network_v2.minha_rede.id
  cidr            = var.subnet_cidr
  ip_version      = 4
  dns_nameservers = ["8.8.8.8", "8.8.4.4"]
  gateway_ip      = var.gateway_ip
}
