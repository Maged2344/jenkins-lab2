module "network" {
  source          = "./network"
  vpc_cidr        = var.vpc_cidr_main
  subnet_public1  = var.subnet_public1_main
  subnet_public2  = var.subnet_public2_main
  }