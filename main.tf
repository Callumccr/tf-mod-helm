resource "helm_release" "default" {
  count      = var.enabled ? 1 : 0
  name       = var.release_name
  repository = var.chart_repository_url != "" ? var.chart_repository_url : ""
  chart      = var.chart
  devel      = var.devel
  version    = var.chart_version
  values     = var.values

  dynamic "set" {
    for_each = var.set
    content {
      name  = set.value["name"]
      value = set.value["value"]
    }
  }

  dynamic "set_string" {
    for_each = var.set_string
    content {
      name  = set_string.value["name"]
      value = set_string.value["value"]
    }
  }

  dynamic "set_sensitive" {
    for_each = var.set_sensitive
    content {
      name  = set_sensitive.value["name"]
      value = set_sensitive.value["value"]
    }
  }

  namespace           = var.namespace
  verify              = var.verify
  keyring             = var.keyring
  timeout             = var.timeout
  disable_webhooks    = var.disable_webhooks
  reuse_values        = var.reuse_values
  force_update        = var.force_update
  recreate_pods       = var.recreate_pods
  wait                = var.wait
  repository_username = var.username
  repository_password = var.password
}
