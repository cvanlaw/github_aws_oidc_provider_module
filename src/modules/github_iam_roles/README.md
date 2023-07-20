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

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.repos_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.repos_role_attachments](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_github_repos"></a> [allowed\_github\_repos](#input\_allowed\_github\_repos) | [OPTIONAL] The set of allowed GitHub repos in the format: {user/org}/{repoName} e.g. cvanlaw/github\_aws\_oidc\_provider\_module. | `set(string)` | `[]` | no |
| <a name="input_oidc_provider_arn"></a> [oidc\_provider\_arn](#input\_oidc\_provider\_arn) | [REQIORED] The ARN of the OIDC provider. | `string` | n/a | yes |
| <a name="input_policy_arns"></a> [policy\_arns](#input\_policy\_arns) | [OPTIONAL] The set of IAM Policy ARNs that should be attached to this IAM Role. Defaults to []. | `set(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_allowed_github_repos"></a> [allowed\_github\_repos](#output\_allowed\_github\_repos) | The value of the input variable of the same name. |
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | The ARN of the created IAM role. |
<!-- END_TF_DOCS -->