locals {
  lambda_iam_policy_name = "lambda_iam_policy"
  lambda_iam_policy_path = "./modules/iam/lambda-iam-policy.json"
  lambda_iam_role_name   = "lambda_iam_role"
  lambda_iam_role_path   = "./modules/iam/lambda-assume-role-policy.json"
}