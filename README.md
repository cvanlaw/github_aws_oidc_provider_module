# GitHub AWS OIDC Provider Terraform Module

A Terraform module for setting up and managing AWS access for GitHub repositories.

[Module Documetation](./src/README.md)
[Submodule Documentation](./src/modules/github_iam_roles/README.md)

## Usage

```terraform
module "gh_aws_oidc" {
  source = "github.com/cvanlaw/github_aws_oidc_module"
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
```

## Examples

* [Single Repo Example](./examples/main.tf)