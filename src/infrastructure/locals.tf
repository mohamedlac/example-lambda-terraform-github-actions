locals {
  lambda_iam_policy_name = "lambda_iam_policy"
  lambda_iam_policy_path = "./modules/iam/lambda-iam-policy.json"
  lambda_iam_role_name   = "lambda_iam_role"
  lambda_iam_role_path   = "./modules/iam/lambda-assume-role-policy.json"

  compatible_layer_runtimes = ["python3.7"]
  compatible_architectures  = ["x86_64"]

  path_to_source_file = "../src/lambdas/upload-trips-data-to-s3/upload_trips_data_to_s3.py"
  path_to_artifact    = "../../artifacts/upload-trips-data-to-s3.zip"
  function_name       = "upload-trips-data-to-s3"
  function_handler    = "upload_trips_data_to_s3.lambda_handler"
  memory_size         = 512
  timeout             = 300
  runtime             = "python3.12"

  s3_nyc_data_bucket_name         = "nyc-data-08062024"
  s3_nyc_data_landing_folder_name = "landing/"
}