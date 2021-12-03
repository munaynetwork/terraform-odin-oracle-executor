# Odin Oracle Executor module

Terraform module which creates the [Odin Oracle Executor](https://geodb.gitbook.io/odin-protocol/oracle-validators) resources.

There are independent submodules:
- [aws-lambda](https://github.com/munaynetwork/terraform-odin-oracle-executor/tree/master/modules/aws-lambda) - to manage the AWS Lambda executor
- [gce-cloudrun](https://github.com/munaynetwork/terraform-odin-oracle-executor/tree/master/modules/gce-cloudrun) - to manage the Google Cloud Run executor (coming soon)

## Usage

### Create the Odin Oracle AWS Lambda Executor
```hcl
module odin_oracle_executor {
  source = "git::https://github.com/munaynetwork/terraform-odin-oracle-executor//modules/aws-lambda"
}
```

If [default values for variables](https://github.com/munaynetwork/terraform-odin-oracle-executor/tree/master/modules/aws-lambda/variables.tf) are ok than the above is enough to create all the required resources.

## Examples

- [Complete Odin Oracle AWS Lambda Executor example](https://github.com/munaynetwork/terraform-odin-oracle-executor/tree/master/examples/aws-lambda) which shows how to create the required resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Module is maintained by [Valentin Bud](https://github.com/valentinbud) with help from [these awesome contributors](https://github.com/munaynetwork/terraform-odin-oracle-executor/graphs/contributors).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/munaynetwork/terraform-odin-oracle-executor/tree/master/LICENSE) for full details.
