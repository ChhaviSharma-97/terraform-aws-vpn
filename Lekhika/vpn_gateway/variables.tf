
variable "awsRegion" {
  default = "us-east-1"
}
variable "vpcId" {
  description = "(Optional) The VPC ID to create in."
}

#tags :(Optional) Tags to apply to the gateway. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.

variable "creatorName" {
  default     = "Lekhika"
  description = "Value of the creator tag"
}

variable "resourceName" {
  default     = "main-vpn-gateway"
  description = "Value of the Resource Name tag"
}
variable "envName" {
  default     = "dev"
  description = "Value of the environment tag"
}
