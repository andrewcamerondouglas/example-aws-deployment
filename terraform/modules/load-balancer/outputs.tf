output "alb_id" {
  description = "ID of ALB instance"
  value       = aws_alb.main.id
}

output "alb_hostname" {
  description = "DNS name of ALB (for testing)"
  value       = aws_alb.main.dns_name
}
