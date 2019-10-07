# Terraform to deploy an example NGinx server, using ECS + Fargate

# Deploy VPC, Subnets and gateways/NATs to 2 AZ
module "network"{
    source      = "../modules/network"

    aws_region  = var.aws_region
    az_count    = var.az_count
}

# Basic security roles
module "security" {
  source = "../modules/security"
  vpc_id = module.network.vpc_id
  app_port = var.app_port
}

# ALB for ingress routing
module "alb" {
  source = "../modules/load-balancer"

  vpc_id = module.network.vpc_id
  public_subnets = module.network.public_subnets
  security_group = module.security.lb_security_group  
}

# ECS cluster and task
module "ecs" {
  source = "../modules/ecs"

  private_subnets = module.network.private_subnets
  aws_region  = var.aws_region
  task_sec_group_id = module.security.tasks_security_group.id
  alb_id = module.alb.alb_id
  app_port = var.app_port
  vpc_id = module.network.vpc_id
}

# Basic logging module (CloudWatch)
module "logging" {
  source = "../modules/logging"
}




