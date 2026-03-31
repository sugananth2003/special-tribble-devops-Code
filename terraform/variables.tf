variable "project_name" {
  description = "Project name used for resource naming."
  type        = string
  default     = "retail-platform"
}

variable "environment" {
  description = "Deployment environment name."
  type        = string
  default     = "dev"
}

variable "aws_region" {
  description = "AWS region for infrastructure deployment."
  type        = string
  default     = "us-east-1"
}
