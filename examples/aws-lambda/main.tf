provider "aws" {
  region = "us-east-2"
}

module "odin_oracle_executor" {
  source                      = "../../modules/aws-lambda"
  create_odin_oracle_executor = true
  memory_size                 = 512
  timeout                     = 12
  runtime                     = "python3.7"
  env_max_data_size           = 256
  env_max_executable          = 8192
}
