module "networking" {
  source = "../modules/networking"
  environment = var.environment
}

module "compute" {
  source = "../modules/compute"
  environment = var.environment
  subnet_id = module.networking.subnet_id
  security_group_id = module.networking.security_group_id
  ami_id = var.ami_id
  instance_count = 2 
}