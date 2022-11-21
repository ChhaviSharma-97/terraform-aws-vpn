# terraform-aws-jenkins

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
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |

## Providers

No providers.

## Modules

We have a VPN module which is basically a ec2 instance installing Pritunl usingthe userdata.sh. 

## Resources

Resources that will be created ith this module is 1 ec2 instance. Along with this we will need 1 security group, VPC ID, subnet ID.

## Inputs

var.common_tags
  A mapping of tags to assign to the resource

var.key_name
  Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource.

var.security_groups
  A string value for Security Group ID

var.subnet_id
  The VPC Subnet IDs to launch in


## Outputs

output "private_ip" {
  value = aws_instance.ec2.private_ip
}

output "id" {
  value = aws_instance.ec2.id
}

output "arn" {
  value = aws_instance.ec2.arn
}

output "public_ip" {
  value = aws_instance.ec2.public_ip
}
<!--- END_TF_DOCS --->

## Authors

Module managed by [TO THE NEW Pvt. Ltd.](https://github.com/tothenew)

## License

Apache 2 Licensed. See [LICENSE](https://github.com/tothenew/terraform-aws-rds/blob/main/LICENSE) for full details.