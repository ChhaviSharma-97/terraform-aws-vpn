# module "vpn" {
#   source                  = "../"
#   create_aws_vpn  = true
#   create_aws_ec2_pritunl = false
#   key_name                = var.key_name
#   security_groups         = var.security_group_id
#   iam_instance_profile    = var.iam_instance_profile
#   subnet_id               = var.subnet_id
#   project_name_prefix     = "dev-tothenew"
#   ebs_optimized           = var.ebs_optimized
#   disable_api_termination = var.disable_api_termination
#   delete_on_termination   = var.delete_on_termination
#   encrypted               = var.encrypted
#   volume_size             = var.root_volume_size
#   volume_type             = var.volume_type
   
#   common_tags = {
#     "Project"     = "ToTheNew",
#     "Environment" = "dev"
#   }
# }
// aws-vpn
module "vpn" {
  source                  = "../"
  create_aws_vpn  = true
  create_aws_ec2_pritunl = false
  security_group_id         = var.security_group_id
  subnet_ids               = var.subnet_ids
  cidr = var.cidr
  allowed_access_groups = var.allowed_access_groups
  allowed_cidr_ranges = var.allowed_cidr_ranges
  project_name_prefix     = var.project_name_prefix
  ca_common_name = var.ca_common_name
  server_common_name = var.server_common_name
  root_common_name = var.root_common_name
  common_tags = {
    "Project"     = "ToTheNew",
    "Environment" = "dev"
  }
}


