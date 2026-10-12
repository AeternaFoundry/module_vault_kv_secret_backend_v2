resource "vault_kv_secret_backend_v2" "kv_secret_backend_v2s" {
  for_each = var.kv_secret_backend_v2s

  mount                = each.value.mount
  cas_required         = each.value.cas_required
  delete_version_after = each.value.delete_version_after
  max_versions         = each.value.max_versions
  namespace            = each.value.namespace
}

