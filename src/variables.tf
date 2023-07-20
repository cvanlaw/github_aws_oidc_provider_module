variable "github_oidc_url" {
  type        = string
  description = "[OPTIONAL] The OIDC URL for GitHub. Defaults to the value from https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-amazon-web-services#adding-the-identity-provider-to-aws"
  default     = "https://token.actions.githubusercontent.com"
}

variable "github_oidc_thumbprints" {
  type        = list(string)
  description = "[OPTIONAL] The OIDC thumbprints for GitHub. Defaults to the values from https://github.blog/changelog/2023-06-27-github-actions-update-on-oidc-integration-with-aws/"
  default = [
    "6938fd4d98bab03faadb97b34396831e3780aea1",
    "1c58a3a8518e8759bf075b76b750d4f2df264fcd"
  ]
}

variable "github_repos" {
  type = map(object({
    github_repo_names = set(string)
    policy_arns       = set(string)
  }))
  description = <<EOF
  [REQUIRED] GitHub repos in the format:
  {
    "iam" = {
      github_repo_names = [
        "cvanlaw/github_aws_oidc_provider_module"
      ]
      policy_arns = [
        "arn:aws:iam::aws:policy/IAMFullAccess"
      ]
    }
  }
  EOF
}
