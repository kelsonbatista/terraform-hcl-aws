variable "owner" {
  description = "Nome do time responsável"
  type = string
}

variable "environment" {
  description = "Nome do ambiente onde será criado o recurso"
  type = string
}

variable "region" {
  description = "Id da região onde os recursos serão provisionados"
  type = string
}
