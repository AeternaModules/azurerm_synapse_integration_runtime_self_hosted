output "synapse_integration_runtime_self_hosteds_authorization_key_primary" {
  description = "Map of authorization_key_primary values across all synapse_integration_runtime_self_hosteds, keyed the same as var.synapse_integration_runtime_self_hosteds"
  value       = { for k, v in azurerm_synapse_integration_runtime_self_hosted.synapse_integration_runtime_self_hosteds : k => v.authorization_key_primary }
}
output "synapse_integration_runtime_self_hosteds_authorization_key_secondary" {
  description = "Map of authorization_key_secondary values across all synapse_integration_runtime_self_hosteds, keyed the same as var.synapse_integration_runtime_self_hosteds"
  value       = { for k, v in azurerm_synapse_integration_runtime_self_hosted.synapse_integration_runtime_self_hosteds : k => v.authorization_key_secondary }
}
output "synapse_integration_runtime_self_hosteds_description" {
  description = "Map of description values across all synapse_integration_runtime_self_hosteds, keyed the same as var.synapse_integration_runtime_self_hosteds"
  value       = { for k, v in azurerm_synapse_integration_runtime_self_hosted.synapse_integration_runtime_self_hosteds : k => v.description }
}
output "synapse_integration_runtime_self_hosteds_name" {
  description = "Map of name values across all synapse_integration_runtime_self_hosteds, keyed the same as var.synapse_integration_runtime_self_hosteds"
  value       = { for k, v in azurerm_synapse_integration_runtime_self_hosted.synapse_integration_runtime_self_hosteds : k => v.name }
}
output "synapse_integration_runtime_self_hosteds_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_integration_runtime_self_hosteds, keyed the same as var.synapse_integration_runtime_self_hosteds"
  value       = { for k, v in azurerm_synapse_integration_runtime_self_hosted.synapse_integration_runtime_self_hosteds : k => v.synapse_workspace_id }
}

