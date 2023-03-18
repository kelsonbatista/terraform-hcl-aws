variable "subnet_id" {
  description = "Subnet ID to network interface"
  type = string
}

variable "network_prefix" {
  description = "Network prefix to VPC and subnet"
  type = number 
}

variable "instance_name" {
  description = "Instance name"
  type = string
}

variable "env" {
  description = "Environment"
  type = string
}

variable "ami" {
  
}

variable "instance_type" {
  
}
