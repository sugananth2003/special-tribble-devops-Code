output "project_name" {
  description = "The project name used by the stack."
  value       = var.project_name
}

output "environment" {
  description = "The environment used by the stack."
  value       = var.environment
}

output "aws_region" {
  description = "The configured AWS region."
  value       = var.aws_region
}
