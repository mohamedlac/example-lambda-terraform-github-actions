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


module "lambdaFunction" {
  source = "./modules/lambda"

  lambda_iam_role_arn = module.lambdaIAM.lambda_iam_role_arn
  path_to_source_file = local.path_to_source_file
  path_to_artifact    = local.path_to_artifact
  function_name       = local.function_name
  function_handler    = local.function_handler
  memory_size         = local.memory_size
  timeout             = local.timeout
  runtime             = local.runtime
}

module "nycTripsDataBucket" {
  source = "./modules/s3"

  s3_nyc_data_bucket_name         = local.s3_nyc_data_bucket_name
  s3_nyc_data_landing_folder_name = local.s3_nyc_data_landing_folder_name
}