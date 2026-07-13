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
  # --- Unconfirmed validation candidates, derived from azurerm_synapse_integration_runtime_self_hosted's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: can(regex("^[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*$", value))
  #   message:   Invalid name for Self-Hosted Integration Runtime: minimum 3 characters, must start and end with a number or a letter, may only consist of letters, numbers and dashes and no consecutive dashes.
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] !ok
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] err != nil
  # path: description
  #   condition: length(value) > 0
  #   message:   must not be empty
}

