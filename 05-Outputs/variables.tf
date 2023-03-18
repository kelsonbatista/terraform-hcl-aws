variable "name" {
  description = "Nome do bucket2"
  type = string
}

variable "env" {
  description = "Ambiente que será criado o bucket"
  type = string
}

variable "ec2_name" {
  description = "Nome do ec2"
  type = string
}

variable "vpc_name" {
  description = "Nome do vpc"
  type = string
}

variable "subnet_name" {
  description = "Nome do subnet"
  type = string
}

variable "network_interface_name" {
  description = "Nome do netowrk interface"
  type = string
}
