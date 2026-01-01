# ============================================
# TERRAFORM REMOTE STATE BACKEND
# ============================================
# Why: Stores state in S3 instead of local file
# Benefits: Team collaboration, state locking, versioning
# DynamoDB prevents concurrent runs (state locking)

terraform {
  backend "s3" {
    bucket         = "ecommerce-tfstate-ubuntu-2026"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}
