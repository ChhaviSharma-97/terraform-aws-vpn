
module "vpn" {
  source                           = "git::https://github.com/ChhaviSharma-97/terraform-aws-vpn?ref=v0.0.1"
  create_aws_vpn                   = false
  create_aws_ec2_pritunl           = true
  vpc_id                           = var.vpc_id
  project_name_prefix              = var.project_name
  key_name                         = var.key_name
  instance_type                    = var.instance_type
  subnet_id                        = var.subnet_id
  volume_type                      = var.volume_type
  root_volume_size                 = var.root_volume_size
  vpn_port                         = var.vpn_port
  common_tags = {
    "Project"     = "${var.project_name}",
    "Environment" = "${var.environment_name}"
  }
}

