
resource "openstack_compute_keypair_v2" "my_key" {
  name       = "my_key"
  public_key = file("./ssh-key.pub")
}
