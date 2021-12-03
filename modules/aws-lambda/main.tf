resource "random_pet" "this" {
  count  = var.create_odin_oracle_executor ? 1 : 0
  length = 1
}

locals {
  package_url = var.package_url
  downloaded  = "downloaded_package_${md5(local.package_url)}.zip"
}

resource "null_resource" "download_package" {
  count = var.create_odin_oracle_executor ? 1 : 0
  triggers = {
    downloaded = local.downloaded
  }

  provisioner "local-exec" {
    command = "curl -L -o ${local.downloaded} ${local.package_url}"
  }
}

module "lambda_function" {
  count   = var.create_odin_oracle_executor ? 1 : 0
  source  = "terraform-aws-modules/lambda/aws"
  version = "~> 2.27.1"

  create_package         = false
  publish                = true
  local_existing_package = local.downloaded
  function_name          = "${random_pet.this[0].id}-odin-oracle-executor-lambda"
  handler                = "lambda_function.lambda_handler"
  memory_size            = var.memory_size
  timeout                = var.timeout

  runtime = var.runtime

  environment_variables = {
    MAX_DATA_SIZE  = var.env_max_data_size
    MAX_EXECUTABLE = var.env_max_executable
  }

  allowed_triggers = {
    AllowExecutionFromAPIGateway = {
      service    = "apigateway"
      source_arn = "${module.api_gateway[0].apigatewayv2_api_execution_arn}/*/*"
    }
  }

  # Without the explicit dependency the apply fails with zip corrupted error
  # because the creation of lambda finishes before the download is done
  depends_on = [null_resource.download_package]
}

module "api_gateway" {
  count   = var.create_odin_oracle_executor ? 1 : 0
  source  = "terraform-aws-modules/apigateway-v2/aws"
  version = "~> 1.5.1"

  name                   = "${random_pet.this[0].id}-odin-oracle-executor-http"
  description            = "Odin Oracle Executor API Gateway"
  protocol_type          = "HTTP"
  create_api_domain_name = false

  default_route_settings = {
    detailed_metrics_enabled = true
    throttling_burst_limit   = var.throttling_burst_limit
    throttling_rate_limit    = var.throttling_rate_limit
  }

  integrations = {

    "ANY /" = {
      lambda_arn             = module.lambda_function[0].lambda_function_arn
      payload_format_version = "2.0"
      timeout_milliseconds   = var.timeout * 1000
    }
  }
}
