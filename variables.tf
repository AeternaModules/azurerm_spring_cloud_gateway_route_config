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
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_gateway_route_configs : (
        v.filters == null || (alltrue([for x in v.filters : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_gateway_route_configs : (
        v.predicates == null || (alltrue([for x in v.predicates : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_gateway_route_configs : (
        v.route == null || alltrue([for item in v.route : (item.description == null || (length(item.description) > 0))])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_gateway_route_configs : (
        v.route == null || alltrue([for item in v.route : (item.filters == null || (alltrue([for x in item.filters : length(x) > 0])))])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_gateway_route_configs : (
        v.route == null || alltrue([for item in v.route : (item.predicates == null || (alltrue([for x in item.predicates : length(x) > 0])))])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_gateway_route_configs : (
        v.route == null || alltrue([for item in v.route : (item.title == null || (length(item.title) > 0))])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_gateway_route_configs : (
        v.route == null || alltrue([for item in v.route : (item.uri == null || (length(item.uri) > 0))])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_gateway_route_configs : (
        v.route == null || alltrue([for item in v.route : (item.classification_tags == null || (alltrue([for x in item.classification_tags : length(x) > 0])))])
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

