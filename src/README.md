<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.1.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_iam_roles"></a> [iam\_roles](#module\_iam\_roles) | ./modules/github_iam_roles | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_iam_openid_connect_provider.github](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_oidc_thumbprints"></a> [github\_oidc\_thumbprints](#input\_github\_oidc\_thumbprints) | [OPTIONAL] The OIDC thumbprints for GitHub. Defaults to the values from https://github.blog/changelog/2023-06-27-github-actions-update-on-oidc-integration-with-aws/ | `list(string)` | <pre>[<br>  "6938fd4d98bab03faadb97b34396831e3780aea1",<br>  "1c58a3a8518e8759bf075b76b750d4f2df264fcd"<br>]</pre> | no |
| <a name="input_github_oidc_url"></a> [github\_oidc\_url](#input\_github\_oidc\_url) | [OPTIONAL] The OIDC URL for GitHub. Defaults to the value from https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-amazon-web-services#adding-the-identity-provider-to-aws | `string` | `"https://token.actions.githubusercontent.com"` | no |
| <a name="input_github_repos"></a> [github\_repos](#input\_github\_repos) | [REQUIRED] GitHub repos in the format:<br>  {<br>    "iam" = {<br>      github\_repo\_names = [<br>        "cvanlaw/github\_aws\_oidc\_provider\_module"<br>      ]<br>      policy\_arns = [<br>        "arn:aws:iam::aws:policy/IAMFullAccess"<br>      ]<br>    }<br>  } | <pre>map(object({<br>    github_repo_names = set(string)<br>    policy_arns       = set(string)<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_github_actions_role_arn"></a> [github\_actions\_role\_arn](#output\_github\_actions\_role\_arn) | The ARN of the IAM role created for GitHub actions. |
<!-- END_TF_DOCS -->