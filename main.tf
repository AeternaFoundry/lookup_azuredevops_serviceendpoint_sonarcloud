data "azuredevops_serviceendpoint_sonarcloud" "serviceendpoint_sonarcloud_lookup" {
  for_each = var.serviceendpoint_sonarcloud_lookup

  project_id            = each.value.project_id
  service_endpoint_id   = each.value.service_endpoint_id
  service_endpoint_name = each.value.service_endpoint_name

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

