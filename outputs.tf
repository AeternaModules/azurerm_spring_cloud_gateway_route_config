output "spring_cloud_gateway_route_configs_id" {
  description = "Map of id values across all spring_cloud_gateway_route_configs, keyed the same as var.spring_cloud_gateway_route_configs"
  value       = { for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "spring_cloud_gateway_route_configs_filters" {
  description = "Map of filters values across all spring_cloud_gateway_route_configs, keyed the same as var.spring_cloud_gateway_route_configs"
  value       = { for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : k => v.filters if v.filters != null && length(v.filters) > 0 }
}
output "spring_cloud_gateway_route_configs_name" {
  description = "Map of name values across all spring_cloud_gateway_route_configs, keyed the same as var.spring_cloud_gateway_route_configs"
  value       = { for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "spring_cloud_gateway_route_configs_open_api" {
  description = "Map of open_api values across all spring_cloud_gateway_route_configs, keyed the same as var.spring_cloud_gateway_route_configs"
  value       = { for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : k => v.open_api if v.open_api != null && length(v.open_api) > 0 }
}
output "spring_cloud_gateway_route_configs_predicates" {
  description = "Map of predicates values across all spring_cloud_gateway_route_configs, keyed the same as var.spring_cloud_gateway_route_configs"
  value       = { for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : k => v.predicates if v.predicates != null && length(v.predicates) > 0 }
}
output "spring_cloud_gateway_route_configs_protocol" {
  description = "Map of protocol values across all spring_cloud_gateway_route_configs, keyed the same as var.spring_cloud_gateway_route_configs"
  value       = { for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : k => v.protocol if v.protocol != null && length(v.protocol) > 0 }
}
output "spring_cloud_gateway_route_configs_route" {
  description = "Map of route values across all spring_cloud_gateway_route_configs, keyed the same as var.spring_cloud_gateway_route_configs"
  value       = { for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : k => v.route if v.route != null && length(v.route) > 0 }
}
output "spring_cloud_gateway_route_configs_spring_cloud_app_id" {
  description = "Map of spring_cloud_app_id values across all spring_cloud_gateway_route_configs, keyed the same as var.spring_cloud_gateway_route_configs"
  value       = { for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : k => v.spring_cloud_app_id if v.spring_cloud_app_id != null && length(v.spring_cloud_app_id) > 0 }
}
output "spring_cloud_gateway_route_configs_spring_cloud_gateway_id" {
  description = "Map of spring_cloud_gateway_id values across all spring_cloud_gateway_route_configs, keyed the same as var.spring_cloud_gateway_route_configs"
  value       = { for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : k => v.spring_cloud_gateway_id if v.spring_cloud_gateway_id != null && length(v.spring_cloud_gateway_id) > 0 }
}
output "spring_cloud_gateway_route_configs_sso_validation_enabled" {
  description = "Map of sso_validation_enabled values across all spring_cloud_gateway_route_configs, keyed the same as var.spring_cloud_gateway_route_configs"
  value       = { for k, v in azurerm_spring_cloud_gateway_route_config.spring_cloud_gateway_route_configs : k => v.sso_validation_enabled if v.sso_validation_enabled != null }
}

