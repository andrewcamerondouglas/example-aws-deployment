variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "eu-west-1"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}

variable "az_count" {
  description = "Number of AZ to spread across"
  default     = 2
}
