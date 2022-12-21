# terraform-aws-vpn

## Usage

```

module "vpn" {
  source                           = "../"
  create_aws_vpn                   = true
  create_aws_ec2_pritunl           = false
  security_group_id                = var.security_group_id
  subnet_ids                       = var.subnet_ids
  vpc_id                           = var.vpc_id
  cidr                             = var.cidr
  allowed_access_groups            = var.allowed_access_groups
  allowed_cidr_ranges              = var.allowed_cidr_ranges
  project_name_prefix              = var.project_name_prefix
  ca_common_name                   = var.ca_common_name
  server_common_name               = var.server_common_name
  root_common_name                 = var.root_common_name
  split_tunnel                     = var.split_tunnel
  organization_name                = var.organization_name
  logs_retention                   = var.logs_retention
  key_name                         = var.key_name
  disable_api_stop                 = var.disable_api_stop
  vpn_port                         = var.vpn_port
  tags                             = var.tags
  authentication_saml_provider_arn = var.authentication_saml_provider_arn
  instance_type                    = var.instance_type
  source_dest_check                = var.source_dest_check
  delete_on_termination            = var.delete_on_termination
  authentication_type              = var.authentication_type
  disable_api_termination          = var.disable_api_termination
  subnet_id                        = var.subnet_id
  volume_type                      = var.volume_type
  enable_self_service_portal       = var.enable_self_service_portal
  root_volume_size                 = var.root_volume_size
  dns_servers                      = var.dns_servers
  iam_instance_profile             = var.iam_instance_profile
  ebs_optimized                    = var.ebs_optimized
  encrypted                        = var.encrypted
  common_tags = {
    "Project"     = "ToTheNew",
    "Environment" = "dev"
  }
}



```

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.3.3 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| template | n/a |
| tls | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| allowed\_access\_groups | List of Access group IDs to allow access. Leave empty to allow all groups | `list(string)` | `[]` | no |
| allowed\_cidr\_ranges | List of CIDR ranges from which access is allowed | `list(string)` | `[]` | no |
| authentication\_saml\_provider\_arn | (Optional) The ARN of the IAM SAML identity provider if type is federated-authentication. | `any` | `null` | no |
| authentication\_type | The type of client authentication to be used. Specify certificate-authentication to use certificate-based authentication, directory-service-authentication to use Active Directory authentication, or federated-authentication to use Federated Authentication via SAML 2.0. | `string` | `"certificate-authentication"` | no |
| ca\_common\_name | n/a | `string` | `""` | no |
| cidr | Network CIDR to use for clients | `string` | `""` | no |
| common\_tags | A mapping of tags to assign to the resource | `map(string)` | n/a | yes |
| create\_aws\_ec2\_pritunl | n/a | `bool` | `false` | no |
| create\_aws\_vpn | n/a | `bool` | `false` | no |
| delete\_on\_termination | Whether EBS volume will be deleted when instance gets deleted. | `bool` | `true` | no |
| disable\_api\_stop | If true, enables EC2 Instance Stop Protection. | `bool` | `false` | no |
| disable\_api\_termination | If true, enables EC2 Instance Termination Protection | `bool` | `true` | no |
| dns\_servers | List of DNS Servers | `list(string)` | `[]` | no |
| ebs\_optimized | If true, the launched EC2 instance will be EBS-optimized | `bool` | `true` | no |
| enable\_self\_service\_portal | Specify whether to enable the self-service portal for the Client VPN endpoint | `bool` | `false` | no |
| encrypted | Whether EBS volume will be encrypted. | `bool` | `true` | no |
| instance\_type | The type of instance to start | `string` | `"t3a.medium"` | no |
| key\_name | Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource | `string` | n/a | yes |
| logs\_retention | Retention in days for CloudWatch Log Group | `number` | `365` | no |
| organization\_name | Name of organization to use in private certificate | `string` | `"ACME, Inc"` | no |
| project\_name\_prefix | A string value to describe prefix of all the resources | `string` | `"dev-tothenew"` | no |
| root\_common\_name | n/a | `string` | `""` | no |
| root\_volume\_size | Root volume size of the EC2 instance | `number` | `100` | no |
| security\_group\_id | Optional security group id to use instead of the default created | `string` | `""` | no |
| security\_groups | A string value for Security Group ID | `list(string)` | `[]` | no |
| server\_common\_name | n/a | `string` | `""` | no |
| source\_dest\_check | Source destination Check. Used for NAT or VPNs. | `bool` | `true` | no |
| split\_tunnel | With split\_tunnel false, all client traffic will go through the VPN. | `bool` | `true` | no |
| subnet\_id | The VPC Subnet IDs to launch in | `string` | n/a | yes |
| subnet\_ids | Subnet ID to associate clients (each subnet passed will create an VPN association - costs involved) | `list(string)` | `[]` | no |
| tags | Extra tags to attach to resources | `map(string)` | `{}` | no |
| volume\_type | Volume type for EC2 instance default latest type | `string` | `"gp3"` | no |
| vpc\_id | VPC Id to create resources | `string` | n/a | yes |
| vpn\_port | (Optional) The port number for the Client VPN endpoint. Valid values are 443 and 1194. Default value is 443. | `string` | `""` | no |

## Outputs

No output.

<!--- END_TF_DOCS --->

## Authors

Module managed by [TO THE NEW Pvt. Ltd.](https://github.com/tothenew)

## License

Apache 2 Licensed. See [LICENSE](https://github.com/ChhaviSharma-97/terraform-aws-vpn/blob/dev/LICENSE) for full details.