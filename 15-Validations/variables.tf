variable "image_id" {
  type = string
  description = "The id of AMI to use for the instance."

  # ex. validar se o nome da imagem possui "ami"
  # regex(...) if cannot find a match
  validation {
    condition = can(regex("^ami-", var.image_id))
    error_message = "The image_id value must start with ami-."
  }
}

variable "ec2_name" {
  description = "Nome da instancia EC2"
  type = string
}

variable "vpc_name" {
  description = "Nome da VPC"
  type = string
}

variable "subnet_name" {
  description = "Nome da subnet"
  type = string
}

variable "env" {
  description = "Ambiente de execução"
  type = string
}
