# Create vpn connection route to azure
resource "aws_vpn_connection_route" "azure" {
  destination_cidr_block = var.destinationCidrBlock
  vpn_connection_id      = var.vpnConnectionId
}