# Provides a resource to create a VPC VPN Gateway.

resource "aws_vpn_gateway" "vpn_gw" {
  vpc_id = var.vpcId

  tags = {
    Name        = var.resourceName
    Creator     = var.creatorName
    Environment = var.envName
  }
}
