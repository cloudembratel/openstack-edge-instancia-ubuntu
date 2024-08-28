variable "os_auth_url" {
  type        = string
}

variable "os_username" {
  type        = string
}

variable "os_password" {
  type        = string
  sensitive   = true
}

variable "os_tenant_name" {
  type        = string
}

variable "os_domain" {
  type        = string
}

variable "os_region" {
  type        = string
}

variable "instance_flavor" {
  type        = string
  default     = "1x tiny"
}

variable "instance_image" {
  type        = string
  default     = "Ubuntu-22.04"
}

variable "subnet_cidr" {
  type        = string 
  default     = "192.168.20.0/24"
}

variable "gateway_ip" {
  type        = string 
  default     = "192.168.20.1"
}


variable "instance-01_eth0_ip" {
  type        = string 
  default     = "192.168.20.10"
}
