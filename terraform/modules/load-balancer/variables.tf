variable "name" {
  description = "ALB name"
  default     = "default-load-balancer"
}

variable "public_subnets" {
  description = "Public subnets to attach ALB to"
}

variable "security_group" {
  description = "ALB security group"
}

variable "vpc_id" {
  description = "ID of parent VPC"
}