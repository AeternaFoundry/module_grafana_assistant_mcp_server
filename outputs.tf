output "assistant_mcp_servers_id" {
  description = "Map of id values across all assistant_mcp_servers, keyed the same as var.assistant_mcp_servers except keys with no id are omitted"
  value       = { for k, v in grafana_assistant_mcp_server.assistant_mcp_servers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "assistant_mcp_servers_applications" {
  description = "Map of applications values across all assistant_mcp_servers, keyed the same as var.assistant_mcp_servers except keys with no applications are omitted"
  value       = { for k, v in grafana_assistant_mcp_server.assistant_mcp_servers : k => v.applications if v.applications != null && length(v.applications) > 0 }
}
output "assistant_mcp_servers_configuration" {
  description = "Map of configuration values across all assistant_mcp_servers, keyed the same as var.assistant_mcp_servers except keys with no configuration are omitted"
  value       = { for k, v in grafana_assistant_mcp_server.assistant_mcp_servers : k => v.configuration if v.configuration != null && length(v.configuration) > 0 }
}
output "assistant_mcp_servers_custom_headers" {
  description = "Map of custom_headers values across all assistant_mcp_servers, keyed the same as var.assistant_mcp_servers except keys with no custom_headers are omitted"
  value       = { for k, v in grafana_assistant_mcp_server.assistant_mcp_servers : k => v.custom_headers if v.custom_headers != null && length(v.custom_headers) > 0 }
  sensitive   = true
}
output "assistant_mcp_servers_description" {
  description = "Map of description values across all assistant_mcp_servers, keyed the same as var.assistant_mcp_servers except keys with no description are omitted"
  value       = { for k, v in grafana_assistant_mcp_server.assistant_mcp_servers : k => v.description if v.description != null && length(v.description) > 0 }
}
output "assistant_mcp_servers_enabled" {
  description = "Map of enabled values across all assistant_mcp_servers, keyed the same as var.assistant_mcp_servers except keys with no enabled are omitted"
  value       = { for k, v in grafana_assistant_mcp_server.assistant_mcp_servers : k => v.enabled if v.enabled != null }
}
output "assistant_mcp_servers_name" {
  description = "Map of name values across all assistant_mcp_servers, keyed the same as var.assistant_mcp_servers except keys with no name are omitted"
  value       = { for k, v in grafana_assistant_mcp_server.assistant_mcp_servers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "assistant_mcp_servers_scope" {
  description = "Map of scope values across all assistant_mcp_servers, keyed the same as var.assistant_mcp_servers except keys with no scope are omitted"
  value       = { for k, v in grafana_assistant_mcp_server.assistant_mcp_servers : k => v.scope if v.scope != null && length(v.scope) > 0 }
}

