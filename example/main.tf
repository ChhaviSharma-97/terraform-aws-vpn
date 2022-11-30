module "vpn" {
    source                    = "../"
    key_name                  = var.key_name
    security_groups           = var.security_groups
    iam_instance_profile      = var.iam_instance_profile
    subnet_id                 = var.subnet_id
    project_name_prefix       = "dev-tothenew"
    common_tags               = {
      "Project"     = "ToTheNew",
      "Environment" = "dev"
    }
}