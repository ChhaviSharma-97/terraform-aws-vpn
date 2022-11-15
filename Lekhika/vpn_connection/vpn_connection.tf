# Manages a Site-to-Site VPN connection. A Site-to-Site VPN connection is an Internet Protocol security (IPsec) VPN connection between a VPC and an on-premises network. Any new Site-to-Site VPN connection that you create is an AWS VPN connection.

resource "aws_vpn_connection" "main" {
  vpn_gateway_id      = var.vpnGatewayId
  customer_gateway_id = var.customerGatewayId
  type                = var.type
  static_routes_only  = var.staticRoutesOnly
}