output "service_custom_field_values_id" {
  description = "Map of id values across all service_custom_field_values, keyed the same as var.service_custom_field_values"
  value       = { for k, v in pagerduty_service_custom_field_value.service_custom_field_values : k => v.id }
}
output "service_custom_field_values_custom_fields" {
  description = "Map of custom_fields values across all service_custom_field_values, keyed the same as var.service_custom_field_values"
  value       = { for k, v in pagerduty_service_custom_field_value.service_custom_field_values : k => v.custom_fields }
}
output "service_custom_field_values_service_id" {
  description = "Map of service_id values across all service_custom_field_values, keyed the same as var.service_custom_field_values"
  value       = { for k, v in pagerduty_service_custom_field_value.service_custom_field_values : k => v.service_id }
}

