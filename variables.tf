variable "synapse_integration_runtime_self_hosteds" {
  description = <<EOT
Map of synapse_integration_runtime_self_hosteds, attributes below
Required:
    - name
    - synapse_workspace_id
Optional:
    - description
EOT

  type = map(object({
    name                 = string
    synapse_workspace_id = string
    description          = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.synapse_integration_runtime_self_hosteds : (
        can(regex("^[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*$", v.name))
      )
    ])
    error_message = "Invalid name for Self-Hosted Integration Runtime: minimum 3 characters, must start and end with a number or a letter, may only consist of letters, numbers and dashes and no consecutive dashes."
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_integration_runtime_self_hosteds : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

