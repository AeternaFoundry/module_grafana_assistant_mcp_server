resource "grafana_assistant_mcp_server" "assistant_mcp_servers" {
  for_each = var.assistant_mcp_servers

  name           = each.value.name
  scope          = each.value.scope
  applications   = each.value.applications
  custom_headers = each.value.custom_headers
  description    = each.value.description
  enabled        = each.value.enabled

  dynamic "configuration" {
    for_each = each.value.configuration != null ? each.value.configuration : []
    content {
      builtin_id             = configuration.value.builtin_id
      tool_approval_policies = configuration.value.tool_approval_policies
      tool_preferences       = configuration.value.tool_preferences
      url                    = configuration.value.url
    }
  }
}

