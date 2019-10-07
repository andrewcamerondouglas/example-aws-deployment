variable "alb_id" {
  description = "ID of the ALB"
}

variable "app_count" {
  description = "The number of instances of the task definition to place"
  default     = "3"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 3000
}

variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "eu-west-1"
}

variable "cluster_name" {
    description = "ECS cluster name"
    default     = "ecs-cluster"
}

variable "ecs_auto_scale_role_name" {
  description = "Autoscaling role name"
  default     = "ecs-autoscaling-role"
}

variable "ecs_task_execution_role_name" {
  description = "ECS task role name"
  default     = "ecs-execution-role"
}

variable "fargate_cpu" {
  description = "The number of cpu units used (1 vCPU = 1024 CPU units)"
  default     = "512"
}

variable "fargate_memory" {
  description = "The amount (in MiB) of memory used"  
  default     = "1024"
}

variable "health_check_path" {
  default = "/"
}

variable "private_subnets" {
  description = "Private subnets to attach ECS to"
}

variable "task_sec_group_id" {
  description = "ID of the task security group"
}

variable "vpc_id" {
  description = "ID of parent VPC"
}