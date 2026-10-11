variable "assistant_mcp_servers" {
  description = <<EOT
Map of assistant_mcp_servers, attributes below
Required:
    - name
    - scope
Optional:
    - applications
    - custom_headers
    - description
    - enabled
    - configuration (block):
        - builtin_id (optional)
        - tool_approval_policies (optional)
        - tool_preferences (optional)
        - url (optional)
EOT

  type = map(object({
    name           = string
    scope          = string
    applications   = optional(list(string))
    custom_headers = optional(map(string))
    description    = optional(string)
    enabled        = optional(bool)
    configuration = optional(list(object({
      builtin_id             = optional(string)
      tool_approval_policies = optional(map(string))
      tool_preferences       = optional(map(string))
      url                    = optional(string)
    })))
  }))
}

