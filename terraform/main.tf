provider "aws" {
  region = var.aws_region
}

locals {
  name_prefix = "${var.project_name}-${var.environment}"

  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

# Add module blocks here as the project grows.
# Example:
# module "vpc" {
#   source = "./modules/vpc"
# }
