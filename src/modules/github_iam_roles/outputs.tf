output "allowed_github_repos" {
  description = "The value of the input variable of the same name."
  value       = var.allowed_github_repos
}

output "role_arn" {
  description = "The ARN of the created IAM role."
  value       = aws_iam_role.repos_role.arn
}
