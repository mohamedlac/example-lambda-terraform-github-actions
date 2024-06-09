resource "aws_lambda_function" "upload-trips-data-to-3" {
  filename      = var.path_to_artifact
  function_name = var.function_name
  role          = var.lambda_iam_role_arn
  handler       = var.function_handler

  memory_size = var.memory_size
  timeout     = var.timeout

  source_code_hash = filebase64sha256(var.path_to_artifact)

  runtime = var.runtime
}