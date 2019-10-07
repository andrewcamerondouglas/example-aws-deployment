variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "eu-west-2"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}

variable "vpc_cidr" {
    description = "cidr of VPC"
    default     = "10.1.0.0/16"
}
