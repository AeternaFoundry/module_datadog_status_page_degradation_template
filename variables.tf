variable "status_page_degradation_templates" {
  description = <<EOT
Map of status_page_degradation_templates, attributes below
Required:
    - name
    - page_id
Optional:
    - components_affected
    - degradation_title
    - updates
EOT

  type = map(object({
    name    = string
    page_id = string
    components_affected = optional(list(object({
      id     = string
      name   = optional(string)
      status = string
    })))
    degradation_title = optional(string)
    updates = optional(list(object({
      message = optional(string)
      status  = string
    })))
  }))
}

