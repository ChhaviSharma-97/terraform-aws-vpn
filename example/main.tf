module "vpn" {
  source                  = "../"
  key_name                = var.key_name
  security_groups         = var.security_groups
  iam_instance_profile    = var.iam_instance_profile
  subnet_id               = var.subnet_id
  project_name_prefix     = "dev-tothenew"
  ebs_optimized           = var.ebs_optimized
  disable_api_termination = var.disable_api_termination
  delete_on_termination   = var.delete_on_termination
  encrypted               = var.encrypted
  volume_size             = var.root_volume_size
  volume_type             = var.volume_type
  common_tags = {
    "Project"     = "ToTheNew",
    "Environment" = "dev"
  }
}
