locals {
  env               = terraform.workspace == "default" ? "dev" : terraform.workspace
  owner             = "Cloud"
  product           = "ProductX"
  service           = "ServiceX"
}