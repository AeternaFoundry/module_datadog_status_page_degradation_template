resource "datadog_status_page_degradation_template" "status_page_degradation_templates" {
  for_each = var.status_page_degradation_templates

  name                = each.value.name
  page_id             = each.value.page_id
  components_affected = each.value.components_affected
  degradation_title   = each.value.degradation_title
  updates             = each.value.updates
}

