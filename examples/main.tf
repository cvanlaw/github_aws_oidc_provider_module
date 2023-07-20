module "gh_aws_oidc" {
  source = "../src"
  github_repos = {
    iam = {
      github_repo_names = [
        "cvanlaw/github_aws_oidc_provider_module"
      ]
      policy_arns = [
        "arn:aws:iam::aws:policy/IAMFullAccess"
      ]
    }
  }
}
