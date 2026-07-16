output "synapse_integration_runtime_self_hosteds_id" {
  description = "Map of id values across all synapse_integration_runtime_self_hosteds, keyed the same as var.synapse_integration_runtime_self_hosteds"
  value       = { for k, v in azurerm_synapse_integration_runtime_self_hosted.synapse_integration_runtime_self_hosteds : k => v.id if v.id != null && length(v.id) > 0 }
}
output "synapse_integration_runtime_self_hosteds_authorization_key_primary" {
  description = "Map of authorization_key_primary values across all synapse_integration_runtime_self_hosteds, keyed the same as var.synapse_integration_runtime_self_hosteds"
  value       = { for k, v in azurerm_synapse_integration_runtime_self_hosted.synapse_integration_runtime_self_hosteds : k => v.authorization_key_primary if v.authorization_key_primary != null && length(v.authorization_key_primary) > 0 }
}
output "synapse_integration_runtime_self_hosteds_authorization_key_secondary" {
  description = "Map of authorization_key_secondary values across all synapse_integration_runtime_self_hosteds, keyed the same as var.synapse_integration_runtime_self_hosteds"
  value       = { for k, v in azurerm_synapse_integration_runtime_self_hosted.synapse_integration_runtime_self_hosteds : k => v.authorization_key_secondary if v.authorization_key_secondary != null && length(v.authorization_key_secondary) > 0 }
}
output "synapse_integration_runtime_self_hosteds_description" {
  description = "Map of description values across all synapse_integration_runtime_self_hosteds, keyed the same as var.synapse_integration_runtime_self_hosteds"
  value       = { for k, v in azurerm_synapse_integration_runtime_self_hosted.synapse_integration_runtime_self_hosteds : k => v.description if v.description != null && length(v.description) > 0 }
}
output "synapse_integration_runtime_self_hosteds_name" {
  description = "Map of name values across all synapse_integration_runtime_self_hosteds, keyed the same as var.synapse_integration_runtime_self_hosteds"
  value       = { for k, v in azurerm_synapse_integration_runtime_self_hosted.synapse_integration_runtime_self_hosteds : k => v.name if v.name != null && length(v.name) > 0 }
}
output "synapse_integration_runtime_self_hosteds_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_integration_runtime_self_hosteds, keyed the same as var.synapse_integration_runtime_self_hosteds"
  value       = { for k, v in azurerm_synapse_integration_runtime_self_hosted.synapse_integration_runtime_self_hosteds : k => v.synapse_workspace_id if v.synapse_workspace_id != null && length(v.synapse_workspace_id) > 0 }
}

