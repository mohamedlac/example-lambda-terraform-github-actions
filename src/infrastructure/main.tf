terraform {
  required_version = "~> 1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

module "lambdaIAM" {
  source = "./modules/iam"

  lambda_iam_policy_name = local.lambda_iam_policy_name
  lambda_iam_policy_path = local.lambda_iam_policy_path
  lambda_iam_role_name   = local.lambda_iam_role_name
  lambda_iam_role_path   = local.lambda_iam_role_path
}