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

variable "region" {
  description = "AWS region"
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

variable "engine" {
  description = "Database engine"
  type        = string
}

variable "storage" {
  description = "Database storage"
  type        = string
}

variable "db_username" {
  description = "Database username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}

variable "domain" {
  description = "Database domain info"
  type        = string
  default     = ""
}

variable "domain_iam_role_name" {
  description = "Database domain IAM role name"
  type        = string
  default     = ""
}