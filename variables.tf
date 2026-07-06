variable "spring_cloud_gateway_route_configs" {
  description = <<EOT
Map of spring_cloud_gateway_route_configs, attributes below
Required:
    - name
    - protocol
    - spring_cloud_gateway_id
Optional:
    - filters
    - predicates
    - spring_cloud_app_id
    - sso_validation_enabled
    - open_api (block):
        - uri (optional)
    - route (block):
        - classification_tags (optional)
        - description (optional)
        - filters (optional)
        - order (required)
        - predicates (optional)
        - sso_validation_enabled (optional)
        - title (optional)
        - token_relay (optional)
        - uri (optional)
EOT

  type = map(object({
    name                    = string
    protocol                = string
    spring_cloud_gateway_id = string
    filters                 = optional(set(string))
    predicates              = optional(set(string))
    spring_cloud_app_id     = optional(string)
    sso_validation_enabled  = optional(bool)
    open_api = optional(object({
      uri = optional(string)
    }))
    route = optional(object({
      classification_tags    = optional(set(string))
      description            = optional(string)
      filters                = optional(set(string))
      order                  = number
      predicates             = optional(set(string))
      sso_validation_enabled = optional(bool)
      title                  = optional(string)
      token_relay            = optional(bool)
      uri                    = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_gateway_route_configs : (
        v.filters == null || (length(v.filters) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_gateway_route_configs : (
        v.predicates == null || (length(v.predicates) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_gateway_route_configs : (
        v.route == null || (v.route.description == null || (length(v.route.description) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_gateway_route_configs : (
        v.route == null || (v.route.filters == null || (length(v.route.filters) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_gateway_route_configs : (
        v.route == null || (v.route.predicates == null || (length(v.route.predicates) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_gateway_route_configs : (
        v.route == null || (v.route.title == null || (length(v.route.title) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_gateway_route_configs : (
        v.route == null || (v.route.uri == null || (length(v.route.uri) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_gateway_route_configs : (
        v.route == null || (v.route.classification_tags == null || (length(v.route.classification_tags) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_spring_cloud_gateway_route_config's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: spring_cloud_gateway_id
  #   source:    [from validate.SpringCloudGatewayID] !ok
  # path: spring_cloud_gateway_id
  #   source:    [from validate.SpringCloudGatewayID] err != nil
  # path: open_api.uri
  #   source:    validation.IsURLWithHTTPorHTTPS(...) - no translation rule yet, add one
  # path: protocol
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: spring_cloud_app_id
  #   source:    [from validate.SpringCloudAppID] !ok
  # path: spring_cloud_app_id
  #   source:    [from validate.SpringCloudAppID] err != nil
}

