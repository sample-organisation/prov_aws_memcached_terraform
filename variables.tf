variable "aws_access_key_id" {
  description = "AWS access key"
}

variable "aws_secret_access_key" {
  description = "AWS secret access key"
}

variable "aws_region" {
  description = "AWS region"
}

variable "vpc_private_sn_id" {
  description = "Private subnet ID for spinning up Memcached instances"
}
