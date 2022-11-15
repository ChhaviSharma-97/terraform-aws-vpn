
variable "awsRegion" {
  default = "us-east-1"
}
variable "vpnGatewayId" {
  description = "(Optional) The VPC ID to create in."
}
variable "customerGatewayId" {
  description = "(Required) The ID of the customer gateway."
}
variable "staticRoutesOnly" {
  description = "(Optional, Default false) Whether the VPN connection uses static routes exclusively. Static routes must be used for devices that don't support BGP."
  default = "true"
}
variable "type" {
  default = "ipsec.1"
  description = "(Required) The type of customer gateway. The only type AWS supports at this time is ipsec.1."
}

#tags :(Optional) Tags to apply to the gateway. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.

variable "creatorName" {
  default     = "Lekhika"
  description = "Value of the creator tag"
}

variable "resourceName" {
  default     = "main-customer-gateway"
  description = "Value of the Resource Name tag"
}
variable "envName" {
  default     = "dev"
  description = "Value of the environment tag"
}
