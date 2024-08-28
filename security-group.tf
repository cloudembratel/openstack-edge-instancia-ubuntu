resource "openstack_networking_secgroup_v2" "my_security_group" {
  name        = "my_security_group"
  description = "Security group para minha instancia"
}

#INGRESS RULES
#Permit SSH
resource "openstack_networking_secgroup_rule_v2" "ssh_rule" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.my_security_group.id
}

# Permitir ICMP de qualquer IP
resource "openstack_networking_secgroup_rule_v2" "icmp_rule" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "icmp"
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.my_security_group.id
}

#EGRESS RULE
resource "openstack_networking_secgroup_rule_v2" "egress_rule" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.my_security_group.id
}