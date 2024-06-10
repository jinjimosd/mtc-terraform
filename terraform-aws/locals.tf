# --- root/locals.tf ---

locals {
  vpc_cidr = "10.124.0.0/16"
}

locals {
  security_groups = {
    public = {
      name        = "public_sg"
      description = "Security Group for Public access"
      ingress = {
        ssh = {
          from       = 0
          to         = 0
          protocol   = -1
          cidr_block = [var.access_ip]
        }
        http = {
          from       = 80
          to         = 80
          protocol   = "tcp"
          cidr_block = [var.access_ip]
        }
        nginx = {
          from       = 8000
          to         = 8000
          protocol   = "tcp"
          cidr_block = [var.access_ip]
        }
      }
    }
    rds = {
      name        = "rds_sg"
      description = "Security Group for RDS access"
      ingress = {
        mysql = {
          from       = 3306
          to         = 3306
          protocol   = "tcp"
          cidr_block = [local.vpc_cidr]
        }
      }
    }
  }
}
