/terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
       version = "1.37.0"
    }
  }
}

provider "openstack" {
  auth_url      =  var.os_auth_url    
  user_name     =  var.os_username                                            
  password      =  var.os_password                                           
  tenant_name   =  var.os_tenant_name                                   
  domain_name   =  var.os_domain                                         
  region        =  var.os_region                                                   
  endpoint_type =  "public"
}
