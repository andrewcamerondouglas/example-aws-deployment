# ALB configuration

resource "aws_alb" "main" {
  name            = var.name
  subnets         = var.public_subnets.*.id
  security_groups = [var.security_group.id]
}