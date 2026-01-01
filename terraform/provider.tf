# ============================================
# TERRAFORM & AWS PROVIDER CONFIGURATION
# ============================================

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# AWS Provider for ap-south-1 (Mumbai)
provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "E-commerce-GitOps"
      Environment = var.environment
      ManagedBy   = "Terraform"
      Owner       = "DevOps-Team"
    }
  }
}
