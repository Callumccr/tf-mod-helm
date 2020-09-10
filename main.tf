# resource "helm_release" "default" {
#   count      = var.enabled ? 1 : 0
#   name       = var.release_name
#   repository = length(data.helm_repository.default) > 0 ? data.helm_repository.default.0.metadata[0].name : null
#   chart      = var.chart
#   devel      = var.devel
#   version    = var.chart_version
#   values     = var.values

#   dynamic "set" {
#     for_each = var.set
#     content {
#       name  = set.value["name"]
#       value = set.value["value"]
#     }
#   }

#   dynamic "set_string" {
#     for_each = var.set_string
#     content {
#       name  = set_string.value["name"]
#       value = set_string.value["value"]
#     }
#   }

#   dynamic "set_sensitive" {
#     for_each = var.set_sensitive
#     content {
#       name  = set_sensitive.value["name"]
#       value = set_sensitive.value["value"]
#     }
#   }

#   namespace        = var.namespace
#   verify           = var.verify
#   keyring          = var.keyring
#   timeout          = var.timeout
#   disable_webhooks = var.disable_webhooks
#   reuse_values     = var.reuse_values
#   force_update     = var.force_update
#   reuse            = var.reuse
#   recreate_pods    = var.recreate_pods
#   wait             = var.wait
# }
