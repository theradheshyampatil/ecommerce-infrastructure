output "repository_urls" {
  description = "ECR repository URLs"
  value       = { for k, v in aws_ecr_repository.services : k => v.repository_url }
}

output "repository_arns" {
  description = "ECR repository ARNs"
  value       = { for k, v in aws_ecr_repository.services : k => v.arn }
}
