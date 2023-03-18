module "network" {
  source = "./modules/network"
  network_prefix = lookup(var.network_prefix, local.env)
  region = lookup(var.aws_region, local.env)
  env = local.env
  subnet_name = "module-subnet"
  vpc_name = "module-vpc"
}

module "instance" {
  source = "./modules/instance"
  instance_name = "terraform-lab"
  ami = lookup(var.instance, local.env)["ami"]
  instance_type = lookup(var.instance, local.env)["type"]
  subnet_id = module.network.subnet_id
  network_prefix = lookup(var.network_prefix, local.env)
  env = local.env
  # vpc_name = "module-vpc"
}
