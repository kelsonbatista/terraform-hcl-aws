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
  type        = string
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

variable "db_info" {
  type = map(object({
    engine_version = string
    family         = string
  }))
  default = {
    mysql = {
      engine_version = "8.0.30"
      family         = "mysql8.0"
    }
    postgres = {
      engine_version = "14.4"
      family         = "postgres14"
    }
  }
}

variable "db_parameter_group" {
  type = map(object({
    parameters = map(object({
      name         = string
      value        = string
      apply_method = string
    }))
  }))
  default = {
    mysql = {
      parameters = {
        1 = { name = "character_set_server", value = "utf8", apply_method = "immediate" }
        2 = { name = "collation_server", value = "utf8_general_ci", apply_method = "immediate" }
      }
    }
    postgres = {
      parameters = {
        1 = { name = "cron.log_run", value = "on", apply_method = "immediate" }
        2 = { name = "client_encoding", value = "utf8", apply_method = "pending-reboot" }
      }
    }
  }
}

variable "instance_class" {
  type = map(string)
  default = {
    dev = "db.t3.micro"
    prd = "db.t3.xlarge"
  }
}

# variable "db_domain_info" {
#   type = object({
#     domain               = optional(string)
#     domain_iam_role_name = optional(string)
#   })
#   default = {
#     domain               = var.domain == "" ? null : var.domain
#     domain_iam_role_name = var.domain_iam_role_name == "" ? null : var.domain_iam_role_name
#   }
# }

