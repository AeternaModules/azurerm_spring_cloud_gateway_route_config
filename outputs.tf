output "spring_cloud_gateway_route_configs_filters" {
  description = "Map of filters values across all spring_cloud_gateway_route_configs, keyed the same as var.spring_cloud_gateway_route_configs"
  value       = { for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : k => v.filters }
}
output "spring_cloud_gateway_route_configs_name" {
  description = "Map of name values across all spring_cloud_gateway_route_configs, keyed the same as var.spring_cloud_gateway_route_configs"
  value       = { for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : k => v.name }
}
output "spring_cloud_gateway_route_configs_open_api" {
  description = "Map of open_api values across all spring_cloud_gateway_route_configs, keyed the same as var.spring_cloud_gateway_route_configs"
  value       = { for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : k => v.open_api }
}
output "spring_cloud_gateway_route_configs_predicates" {
  description = "Map of predicates values across all spring_cloud_gateway_route_configs, keyed the same as var.spring_cloud_gateway_route_configs"
  value       = { for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : k => v.predicates }
}
output "spring_cloud_gateway_route_configs_protocol" {
  description = "Map of protocol values across all spring_cloud_gateway_route_configs, keyed the same as var.spring_cloud_gateway_route_configs"
  value       = { for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : k => v.protocol }
}
output "spring_cloud_gateway_route_configs_route" {
  description = "Map of route values across all spring_cloud_gateway_route_configs, keyed the same as var.spring_cloud_gateway_route_configs"
  value       = { for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : k => v.route }
}
output "spring_cloud_gateway_route_configs_spring_cloud_app_id" {
  description = "Map of spring_cloud_app_id values across all spring_cloud_gateway_route_configs, keyed the same as var.spring_cloud_gateway_route_configs"
  value       = { for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : k => v.spring_cloud_app_id }
}
output "spring_cloud_gateway_route_configs_spring_cloud_gateway_id" {
  description = "Map of spring_cloud_gateway_id values across all spring_cloud_gateway_route_configs, keyed the same as var.spring_cloud_gateway_route_configs"
  value       = { for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : k => v.spring_cloud_gateway_id }
}
output "spring_cloud_gateway_route_configs_sso_validation_enabled" {
  description = "Map of sso_validation_enabled values across all spring_cloud_gateway_route_configs, keyed the same as var.spring_cloud_gateway_route_configs"
  value       = { for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : k => v.sso_validation_enabled }
}

