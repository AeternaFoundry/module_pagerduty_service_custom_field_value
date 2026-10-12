variable "service_custom_field_values" {
  description = <<EOT
Map of service_custom_field_values, attributes below
Required:
    - service_id
    - custom_fields (block):
        - id (optional)
        - name (optional)
        - value (optional)
EOT

  type = map(object({
    service_id = string
    custom_fields = list(object({
      id    = optional(string)
      name  = optional(string)
      value = optional(string)
    }))
  }))
}

