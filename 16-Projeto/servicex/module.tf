module "network" {
  source      = "./terraform-network"
  owner       = local.owner
  environment = local.env
  region      = lookup(var.aws_region, local.env)
}

module "frontend" {
  source      = "./terraform-frontend"
  region      = lookup(var.aws_region, local.env)
  aws_vpc     = module.network.vpc.id
  subnet_ids  = module.network.subnet_public_id
  owner       = local.owner
  environment = local.env
  product     = local.product
  service     = local.service
}

module "backend" {
  source      = "./terraform-backend"
  region      = lookup(var.aws_region, local.env)
  aws_vpc     = module.network.vpc.id
  subnet_ids  = module.network.subnet_public_id
  owner       = local.owner
  environment = local.env
  product     = local.product
  service     = local.service
}

module "database" {
  source      = "./terraform-database"
  engine      = "postgres"
  storage     = 10  
  aws_vpc     = module.network.vpc.id
  subnet_ids  = module.network.subnet_public_id
  owner       = local.owner
  environment = local.env
  product     = local.product
  service     = local.service
  db_username = "admin"
  db_password = "Admin12!#$@"
}