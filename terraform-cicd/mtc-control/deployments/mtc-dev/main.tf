//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute" {
  source  = "app.terraform.io/dsodiary/compute/aws"
  version = "1.0.3"

  aws_region          = "ap-southeast-1"
  public_key_material = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDv4dIbgwN5rsrBNAk4nqbovlkeRI39tV+i4K3Vu31mY truongblx@dso"
  public_sg           = module.networking.public_sg
  public_subnets      = module.networking.public_subnets
}

module "networking" {
  source  = "app.terraform.io/dsodiary/networking/aws"
  version = "1.0.2"

  access_ip  = "0.0.0.0/0"
  aws_region = "ap-southeast-1"
}