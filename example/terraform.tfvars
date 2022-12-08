security_groups      = ["sg-xyz"]
subnet_id            = "subnet-xyz"
key_name             = "aws_keyname"
iam_instance_profile = "instance-profile-name"


######################aws-vpn variables##################
cidr                       = "192.168.200.0/22"
name                       = "testvpn"
subnet_ids                 = ["subnet-0e33201bce8829251", "subnet-034d78fd9f22e788a"]
vpc_id                     = "vpc-036737af810fe6bb0"
enable_self_service_portal = false
allowed_cidr_ranges        = ["172.16.0.0/16"]
dns_servers                = ["8.8.8.8", "8.8.4.4"]
security_group_id          = "sg-0417cd780c75bc8f7"
authentication_type        = "certificate-authentication"
vpn_port                   = 1194
split_tunnel               = false