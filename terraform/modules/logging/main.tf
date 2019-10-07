# CloudWatch group and log stream configuration

resource "aws_cloudwatch_log_group" "log_group" {
  name              = "/ecs/app"
  retention_in_days = var.retention_period

  tags = {
    Name = "log-group"
  }
}

resource "aws_cloudwatch_log_stream" "log_stream" {
  name           = "log-stream"
  log_group_name = aws_cloudwatch_log_group.log_group.name
}