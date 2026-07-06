output "spring_cloud_gateway_route_configs" {
  description = "All spring_cloud_gateway_route_config resources"
  value       = azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs
}
output "spring_cloud_gateway_route_configs_filters" {
  description = "List of filters values across all spring_cloud_gateway_route_configs"
  value       = [for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : v.filters]
}
output "spring_cloud_gateway_route_configs_name" {
  description = "List of name values across all spring_cloud_gateway_route_configs"
  value       = [for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : v.name]
}
output "spring_cloud_gateway_route_configs_open_api" {
  description = "List of open_api values across all spring_cloud_gateway_route_configs"
  value       = [for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : v.open_api]
}
output "spring_cloud_gateway_route_configs_predicates" {
  description = "List of predicates values across all spring_cloud_gateway_route_configs"
  value       = [for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : v.predicates]
}
output "spring_cloud_gateway_route_configs_protocol" {
  description = "List of protocol values across all spring_cloud_gateway_route_configs"
  value       = [for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : v.protocol]
}
output "spring_cloud_gateway_route_configs_route" {
  description = "List of route values across all spring_cloud_gateway_route_configs"
  value       = [for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : v.route]
}
output "spring_cloud_gateway_route_configs_spring_cloud_app_id" {
  description = "List of spring_cloud_app_id values across all spring_cloud_gateway_route_configs"
  value       = [for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : v.spring_cloud_app_id]
}
output "spring_cloud_gateway_route_configs_spring_cloud_gateway_id" {
  description = "List of spring_cloud_gateway_id values across all spring_cloud_gateway_route_configs"
  value       = [for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : v.spring_cloud_gateway_id]
}
output "spring_cloud_gateway_route_configs_sso_validation_enabled" {
  description = "List of sso_validation_enabled values across all spring_cloud_gateway_route_configs"
  value       = [for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : v.sso_validation_enabled]
}

