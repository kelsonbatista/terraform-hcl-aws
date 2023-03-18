variable "aws_region" {
  description = "AWS region where the resources will be created"

  type = object({
    dev = string
    prd = string
  })

  default = {
    dev = "us-east-1"
    prd = "us-east-1"
  }
}

variable "instance" {
  description = "Instance configuration per workspace"

  type = object({
    dev = object({
      ami = string
      type = string
    })

    prd = object({
      ami = string
      type = string
    })
  })

  default = {
    dev = {
      ami = "ami-0c2b0d3fb02824d92"
      type = "t2.micro"
    }

    prd = {
      ami = "ami-0c2b0d3fb02824d92"
      type = "t2.micro"
    }
  }
}

variable "network_prefix" {
  description = "Prefix to create the network"
  type = object({
    dev = number
    prd = number
  })

  default = {
    dev = "172.16"
    prd = "172.17"
  }
}

# variable "ec2_name" {
#   description = "Nome da instancia EC2"
#   type = string
# }

# variable "vpc_name" {
#   description = "Nome da VPC"
#   type = string
# }

# variable "subnet_name" {
#   description = "Nome da subnet"
#   type = string
# }

# variable "env" {
#   description = "Ambiente de execução"
#   type = string
# }
