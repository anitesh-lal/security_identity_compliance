variable "aws_region" {

}
variable "aws_profile" {

}
variable "db_master_password" {

}
variable "secret_key" {

}
variable "admin_password" {

}
locals {
  service_name = "Bot Chat"
  owner        = "Infrastructure Team"
  environment  = "Development"
}

locals {
  common_tags = {
    Service           = local.service_name
    Owner             = local.owner
    Environment       = local.environment
    terraform_managed = "true"

  }
}