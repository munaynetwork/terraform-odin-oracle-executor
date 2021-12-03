output "odin_oracle_executor_api_endpoint" {
  value       = var.create_odin_oracle_executor ? module.api_gateway[0].apigatewayv2_api_api_endpoint : ""
  description = "The API gateway endpoint at which the Odin Oracle Executor can be found"
}
