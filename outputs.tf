output "synapse_integration_runtime_self_hosteds" {
  description = "All synapse_integration_runtime_self_hosted resources"
  value       = azurerm_synapse_integration_runtime_self_hosted.synapse_integration_runtime_self_hosteds
}
output "synapse_integration_runtime_self_hosteds_authorization_key_primary" {
  description = "List of authorization_key_primary values across all synapse_integration_runtime_self_hosteds"
  value       = [for k, v in azurerm_synapse_integration_runtime_self_hosted.synapse_integration_runtime_self_hosteds : v.authorization_key_primary]
}
output "synapse_integration_runtime_self_hosteds_authorization_key_secondary" {
  description = "List of authorization_key_secondary values across all synapse_integration_runtime_self_hosteds"
  value       = [for k, v in azurerm_synapse_integration_runtime_self_hosted.synapse_integration_runtime_self_hosteds : v.authorization_key_secondary]
}
output "synapse_integration_runtime_self_hosteds_description" {
  description = "List of description values across all synapse_integration_runtime_self_hosteds"
  value       = [for k, v in azurerm_synapse_integration_runtime_self_hosted.synapse_integration_runtime_self_hosteds : v.description]
}
output "synapse_integration_runtime_self_hosteds_name" {
  description = "List of name values across all synapse_integration_runtime_self_hosteds"
  value       = [for k, v in azurerm_synapse_integration_runtime_self_hosted.synapse_integration_runtime_self_hosteds : v.name]
}
output "synapse_integration_runtime_self_hosteds_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_integration_runtime_self_hosteds"
  value       = [for k, v in azurerm_synapse_integration_runtime_self_hosted.synapse_integration_runtime_self_hosteds : v.synapse_workspace_id]
}

