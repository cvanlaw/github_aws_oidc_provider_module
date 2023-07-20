output "github_actions_role_arn" {
  description = "The ARN of the IAM role created for GitHub actions."
  value       = { for r in module.iam_roles : r.role_arn => r.allowed_github_repos }
}
