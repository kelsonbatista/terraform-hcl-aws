variable "environment" {
  description = "Environment name"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs"
}

variable "owner" {
  description = "Owner name"
  type        = string
}

variable "service" {
  description = "Service name"
  type        = string
}

variable "product" {
  description = "Product name"
  type        = string
}

variable "aws_vpc" {
  description = "VPC ID"
  type        = strings
}