provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Repository = "https://github.com/cvanlaw/github_aws_oidc_provider_modules"
    }
  }
}
