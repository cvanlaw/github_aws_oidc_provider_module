resource "aws_iam_openid_connect_provider" "github" {
  url             = var.github_oidc_url
  thumbprint_list = var.github_oidc_thumbprints

  client_id_list = [
    "sts.amazonaws.com"
  ]
}

module "iam_roles" {
  source = "./modules/github_iam_roles"

  for_each             = var.github_repos
  allowed_github_repos = each.value.github_repo_names
  policy_arns          = each.value.policy_arns
  oidc_provider_arn    = aws_iam_openid_connect_provider.github.arn
}
