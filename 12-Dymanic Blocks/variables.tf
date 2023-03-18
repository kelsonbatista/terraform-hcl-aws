variable "company" {
  type = string
}

variable "env" {
  type = string
}

variable "sg_ingress_ports" {
  type = list(number)
  description = "list of ingress ports to open"
  default = [8080, 443, 80, 22, 21]
}

variable "sg_egress_ports" {
  type = list(number)
  description = "list of egress ports to open"
  default = [8080, 443, 80, 22, 21]
}
