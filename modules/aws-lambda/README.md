# Odin Oracle AWS Lambda Executor

This module creates the Odin Oracle AWS Lambda Executor resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.67.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | ~> 3.1.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | ~> 3.1.0 |
| <a name="provider_random"></a> [random](#provider\_random) | ~> 3.1.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_api_gateway"></a> [api\_gateway](#module\_api\_gateway) | terraform-aws-modules/apigateway-v2/aws | ~> 1.5.1 |
| <a name="module_lambda_function"></a> [lambda\_function](#module\_lambda\_function) | terraform-aws-modules/lambda/aws | ~> 2.27.1 |

## Resources

| Name | Type |
|------|------|
| [null_resource.download_package](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [random_pet.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_odin_oracle_executor"></a> [create\_odin\_oracle\_executor](#input\_create\_odin\_oracle\_executor) | Whether to create Odin Oracle Executor | `bool` | `true` | no |
| <a name="input_env_max_data_size"></a> [env\_max\_data\_size](#input\_env\_max\_data\_size) | The Odin Oracle Executor MAX\_DATA\_SIZE env var | `number` | `256` | no |
| <a name="input_env_max_executable"></a> [env\_max\_executable](#input\_env\_max\_executable) | The Odin Oracle Executor MAX\_EXECUTABLE env var | `number` | `8192` | no |
| <a name="input_memory_size"></a> [memory\_size](#input\_memory\_size) | The memory allocated for the Odin Oracle Executor lambda function (in MB) | `number` | `512` | no |
| <a name="input_package_url"></a> [package\_url](#input\_package\_url) | The URL where Odin Oracle Executor package can be found | `string` | `"https://firebasestorage.googleapis.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MZlKBpqEGYICIBcvDa3%2Fuploads%2FS5cNqkfzQDpTs48OqZva%2Fodin_oracle_executor.zip?alt=media&token=4ed5ffa9-ee73-4804-bcd3-2e429ccda6e2"` | no |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | The runtime used by the Odin Oracle Executor lambda function | `string` | `"python3.7"` | no |
| <a name="input_throttling_burst_limit"></a> [throttling\_burst\_limit](#input\_throttling\_burst\_limit) | The API Gateway throttling burst limit | `number` | `100` | no |
| <a name="input_throttling_rate_limit"></a> [throttling\_rate\_limit](#input\_throttling\_rate\_limit) | The API Gateway throttling rate limit | `number` | `100` | no |
| <a name="input_timeout"></a> [timeout](#input\_timeout) | Amount of time the Odin Oracle Executor lambda function has to run in seconds | `number` | `12` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_odin_oracle_executor_api_endpoint"></a> [odin\_oracle\_executor\_api\_endpoint](#output\_odin\_oracle\_executor\_api\_endpoint) | The API gateway endpoint at which the Odin Oracle Executor can be found |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
