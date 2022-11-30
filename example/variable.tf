variable "subnet_id" {
    description = "The VPC Subnet IDs to launch in"
    type        = string
}

variable "security_groups" {
    description = "A string value for Security Group ID"
    type        = list(string)
}


variable "iam_instance_profile" {
    description = "iam_instance_profile"
    type        = string
    default     = ""
}
variable "key_name" {
    description = "Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource"
    type        = string
}
