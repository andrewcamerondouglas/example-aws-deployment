output "alb_hostname" {
  description = "Host name of the ALB (for basic testing)"
  value       = module.alb.alb_hostname
}
