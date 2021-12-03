# Odin Oracle AWS Lambda Executor example

Configuration in this directory creates the necessary resources in AWS for the Odin Oracle Executor.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.67.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_odin_oracle_executor"></a> [odin\_oracle\_executor](#module\_odin\_oracle\_executor) | ../../modules/aws-lambda | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_odin_oracle_executor_api_endpoint"></a> [odin\_oracle\_executor\_api\_endpoint](#output\_odin\_oracle\_executor\_api\_endpoint) | The API gateway endpoint at which the Odin Oracle Executor can be found |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
