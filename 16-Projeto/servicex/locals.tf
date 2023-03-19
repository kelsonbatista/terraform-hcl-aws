locals {
  env               = terraform.workspace == "default" ? "dev" : terraform.workspace
  owner             = "cloud"
  product           = "productx"
  service           = "servicex"
}