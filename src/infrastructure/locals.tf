locals {
  lambda_iam_policy_name = "lambda_iam_policy"
  lambda_iam_policy_path = "./modules/iam/lambda-iam-policy.json"
  lambda_iam_role_name   = "lambda_iam_role"
  lambda_iam_role_path   = "./modules/iam/lambda-assume-role-policy.json"

  compatible_layer_runtimes = ["python3.7"]
  compatible_architectures  = ["x86_64"]

  path_to_source_file = "../src/lambdas/hello-world/lambda_function.py"
  path_to_artifact    = "../../hello-world_pkg.zip"
  function_name       = "hello-world"
  function_handler    = "lambda_function.lambda_handler"
  memory_size         = 512
  timeout             = 300
  runtime             = "python3.12"
}