variable "default_tag" {
  type        = string
  description = "A default tag to add to everything"
  default     = "terraform_aws_ec2_rds"
}

# Variables used
variable "my_ip_address" {
  type    = string
  default = "176.116.125.130"
}
