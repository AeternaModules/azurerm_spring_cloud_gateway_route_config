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
    route = optional(list(object({
      classification_tags    = optional(set(string))
      description            = optional(string)
      filters                = optional(set(string))
      order                  = number
      predicates             = optional(set(string))
      sso_validation_enabled = optional(bool)
      title                  = optional(string)
      token_relay            = optional(bool)
      uri                    = optional(string)
    })))
  }))
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
  # path: filters[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: predicates[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: route.description
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: route.filters[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: route.predicates[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: route.title
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: route.uri
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: route.classification_tags[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
}

