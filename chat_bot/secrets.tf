provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

module "db_password" {
  source = "github.com/anitesh-lal/aws-secret-manager"

  name        = "Master-db-password"
  description = "RDS password for App cluster"
  value       = var.db_master_password
  tags        = local.common_tags
}

module "secret_key" {
  source = "github.com/anitesh-lal/aws-secret-manager"

  name        = "App-secret"
  description = "Secret Key for App"
  value       = var.secret_key
  tags        = local.common_tags
}

module "admin_password" {
  source = "github.com/anitesh-lal/aws-secret-manager"

  name        = "Admin-Password"
  description = "ADMIN Password for App."
  value       = var.admin_password
  tags        = local.common_tags
}