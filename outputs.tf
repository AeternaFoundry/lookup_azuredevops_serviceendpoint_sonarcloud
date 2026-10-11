output "serviceendpoint_sonarcloud_lookup_id" {
  description = "Map of id values across all serviceendpoint_sonarcloud_lookup, keyed the same as var.serviceendpoint_sonarcloud_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_serviceendpoint_sonarcloud.serviceendpoint_sonarcloud_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "serviceendpoint_sonarcloud_lookup_authorization" {
  description = "Map of authorization values across all serviceendpoint_sonarcloud_lookup, keyed the same as var.serviceendpoint_sonarcloud_lookup except keys with no authorization are omitted"
  value       = { for k, v in data.azuredevops_serviceendpoint_sonarcloud.serviceendpoint_sonarcloud_lookup : k => v.authorization if v.authorization != null && length(v.authorization) > 0 }
}
output "serviceendpoint_sonarcloud_lookup_description" {
  description = "Map of description values across all serviceendpoint_sonarcloud_lookup, keyed the same as var.serviceendpoint_sonarcloud_lookup except keys with no description are omitted"
  value       = { for k, v in data.azuredevops_serviceendpoint_sonarcloud.serviceendpoint_sonarcloud_lookup : k => v.description if v.description != null && length(v.description) > 0 }
}
output "serviceendpoint_sonarcloud_lookup_project_id" {
  description = "Map of project_id values across all serviceendpoint_sonarcloud_lookup, keyed the same as var.serviceendpoint_sonarcloud_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.azuredevops_serviceendpoint_sonarcloud.serviceendpoint_sonarcloud_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "serviceendpoint_sonarcloud_lookup_service_endpoint_id" {
  description = "Map of service_endpoint_id values across all serviceendpoint_sonarcloud_lookup, keyed the same as var.serviceendpoint_sonarcloud_lookup except keys with no service_endpoint_id are omitted"
  value       = { for k, v in data.azuredevops_serviceendpoint_sonarcloud.serviceendpoint_sonarcloud_lookup : k => v.service_endpoint_id if v.service_endpoint_id != null && length(v.service_endpoint_id) > 0 }
}
output "serviceendpoint_sonarcloud_lookup_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_sonarcloud_lookup, keyed the same as var.serviceendpoint_sonarcloud_lookup except keys with no service_endpoint_name are omitted"
  value       = { for k, v in data.azuredevops_serviceendpoint_sonarcloud.serviceendpoint_sonarcloud_lookup : k => v.service_endpoint_name if v.service_endpoint_name != null && length(v.service_endpoint_name) > 0 }
}

