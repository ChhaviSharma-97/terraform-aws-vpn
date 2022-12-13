# terraform-aws-vpn

## Usage

```
module "vpn" {
    source                    = "git::https://github.com/tothenew/terraform-aws-vpn.git"
    key_name                  = "tothenew"
    iam_instance_profile      = "tothenew"
    security_groups           = ["sg-999999999999"]
    subnet_id                 = "subnet-999999999999"
    project_name_prefix       = "dev-tothenew"
    common_tags               = {
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
| allowed\_access\_groups | n/a | `any` | n/a | yes |
| allowed\_cidr\_ranges | n/a | `any` | n/a | yes |
| authentication\_saml\_provider\_arn | n/a | `any` | n/a | yes |
| authentication\_type | n/a | `any` | n/a | yes |
| ca\_common\_name | n/a | `any` | n/a | yes |
| cidr | n/a | `any` | `null` | no |
| common\_tags | n/a | `any` | n/a | yes |
| create\_aws\_ec2\_pritunl | n/a | `any` | n/a | yes |
| create\_aws\_vpn | n/a | `any` | n/a | yes |
| delete\_on\_termination | n/a | `any` | n/a | yes |
| disable\_api\_stop | n/a | `any` | n/a | yes |
| disable\_api\_termination | n/a | `any` | n/a | yes |
| dns\_servers | n/a | `any` | n/a | yes |
| ebs\_optimized | n/a | `any` | n/a | yes |
| enable\_self\_service\_portal | n/a | `any` | n/a | yes |
| encrypted | n/a | `any` | n/a | yes |
| iam\_instance\_profile | n/a | `any` | n/a | yes |
| instance\_type | n/a | `any` | n/a | yes |
| key\_name | n/a | `any` | n/a | yes |
| logs\_retention | n/a | `any` | n/a | yes |
| organization\_name | n/a | `any` | n/a | yes |
| project\_name\_prefix | n/a | `any` | n/a | yes |
| root\_common\_name | n/a | `any` | n/a | yes |
| root\_volume\_size | n/a | `any` | n/a | yes |
| security\_group\_id | n/a | `any` | n/a | yes |
| server\_common\_name | n/a | `any` | n/a | yes |
| source\_dest\_check | n/a | `any` | n/a | yes |
| split\_tunnel | n/a | `any` | n/a | yes |
| subnet\_id | ###############################Pritunl variables########################## | `any` | n/a | yes |
| subnet\_ids | n/a | `any` | n/a | yes |
| tags | n/a | `any` | n/a | yes |
| volume\_type | n/a | `any` | n/a | yes |
| vpc\_id | n/a | `any` | n/a | yes |
| vpn\_port | n/a | `any` | n/a | yes |

## Outputs

No output.

<!--- END_TF_DOCS --->

## Authors

Module managed by [TO THE NEW Pvt. Ltd.](https://github.com/tothenew)

## License

Apache 2 Licensed. See [LICENSE](https://github.com/ChhaviSharma-97/terraform-aws-vpn/blob/dev/LICENSE) for full details.