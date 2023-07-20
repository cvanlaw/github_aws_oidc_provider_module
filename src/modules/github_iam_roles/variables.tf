variable "allowed_github_repos" {
  type        = set(string)
  description = "[OPTIONAL] The set of allowed GitHub repos in the format: {user/org}/{repoName} e.g. cvanlaw/github_aws_oidc_provider_module."
  default     = []
}

variable "policy_arns" {
  type        = set(string)
  description = "[OPTIONAL] The set of IAM Policy ARNs that should be attached to this IAM Role. Defaults to []."
  default     = []
}

variable "oidc_provider_arn" {
  type        = string
  description = "[REQIORED] The ARN of the OIDC provider."
}
