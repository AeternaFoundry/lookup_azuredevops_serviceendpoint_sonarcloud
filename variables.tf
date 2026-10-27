variable "serviceendpoint_sonarcloud_lookup" {
  description = <<EOT
Map of serviceendpoint_sonarcloud_lookup, attributes below
Required:
    - project_id
Optional:
    - service_endpoint_id
    - service_endpoint_name
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    project_id            = string
    service_endpoint_id   = optional(string)
    service_endpoint_name = optional(string)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_sonarcloud_lookup : (
        v.service_endpoint_name == null || (length(v.service_endpoint_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_sonarcloud_lookup : (
        v.service_endpoint_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.service_endpoint_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

