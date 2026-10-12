variable "kv_secret_backend_v2s" {
  description = <<EOT
Map of kv_secret_backend_v2s, attributes below
Required:
    - mount
Optional:
    - cas_required
    - delete_version_after
    - max_versions
    - namespace
EOT

  type = map(object({
    mount                = string
    cas_required         = optional(bool)
    delete_version_after = optional(number)
    max_versions         = optional(number)
    namespace            = optional(string)
  }))
}

