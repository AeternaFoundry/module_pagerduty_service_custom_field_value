output "service_custom_field_values_id" {
  description = "Map of id values across all service_custom_field_values, keyed the same as var.service_custom_field_values except keys with no id are omitted"
  value       = { for k, v in pagerduty_service_custom_field_value.service_custom_field_values : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_custom_field_values_custom_fields" {
  description = "Map of custom_fields values across all service_custom_field_values, keyed the same as var.service_custom_field_values except keys with no custom_fields are omitted"
  value       = { for k, v in pagerduty_service_custom_field_value.service_custom_field_values : k => v.custom_fields if v.custom_fields != null && length(v.custom_fields) > 0 }
}
output "service_custom_field_values_service_id" {
  description = "Map of service_id values across all service_custom_field_values, keyed the same as var.service_custom_field_values except keys with no service_id are omitted"
  value       = { for k, v in pagerduty_service_custom_field_value.service_custom_field_values : k => v.service_id if v.service_id != null && length(v.service_id) > 0 }
}

