output "kv_secret_backend_v2s_id" {
  description = "Map of id values across all kv_secret_backend_v2s, keyed the same as var.kv_secret_backend_v2s except keys with no id are omitted"
  value       = { for k, v in vault_kv_secret_backend_v2.kv_secret_backend_v2s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kv_secret_backend_v2s_cas_required" {
  description = "Map of cas_required values across all kv_secret_backend_v2s, keyed the same as var.kv_secret_backend_v2s except keys with no cas_required are omitted"
  value       = { for k, v in vault_kv_secret_backend_v2.kv_secret_backend_v2s : k => v.cas_required if v.cas_required != null }
}
output "kv_secret_backend_v2s_delete_version_after" {
  description = "Map of delete_version_after values across all kv_secret_backend_v2s, keyed the same as var.kv_secret_backend_v2s except keys with no delete_version_after are omitted"
  value       = { for k, v in vault_kv_secret_backend_v2.kv_secret_backend_v2s : k => v.delete_version_after if v.delete_version_after != null }
}
output "kv_secret_backend_v2s_max_versions" {
  description = "Map of max_versions values across all kv_secret_backend_v2s, keyed the same as var.kv_secret_backend_v2s except keys with no max_versions are omitted"
  value       = { for k, v in vault_kv_secret_backend_v2.kv_secret_backend_v2s : k => v.max_versions if v.max_versions != null }
}
output "kv_secret_backend_v2s_mount" {
  description = "Map of mount values across all kv_secret_backend_v2s, keyed the same as var.kv_secret_backend_v2s except keys with no mount are omitted"
  value       = { for k, v in vault_kv_secret_backend_v2.kv_secret_backend_v2s : k => v.mount if v.mount != null && length(v.mount) > 0 }
}
output "kv_secret_backend_v2s_namespace" {
  description = "Map of namespace values across all kv_secret_backend_v2s, keyed the same as var.kv_secret_backend_v2s except keys with no namespace are omitted"
  value       = { for k, v in vault_kv_secret_backend_v2.kv_secret_backend_v2s : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}

