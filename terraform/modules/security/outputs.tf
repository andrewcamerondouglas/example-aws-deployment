output "lb_security_group" {
  value = aws_security_group.lb
}

output "tasks_security_group" {
  value = aws_security_group.tasks
}