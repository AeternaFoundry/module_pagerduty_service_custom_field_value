resource "pagerduty_service_custom_field_value" "service_custom_field_values" {
  for_each = var.service_custom_field_values

  service_id = each.value.service_id

  dynamic "custom_fields" {
    for_each = each.value.custom_fields
    content {
      id    = custom_fields.value.id
      name  = custom_fields.value.name
      value = custom_fields.value.value
    }
  }
}

