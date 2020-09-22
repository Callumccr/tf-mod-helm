data "helm_repository" "default" {
  name     = var.chart_repository_name
  url      = var.chart_repository_url
  username = var.username != "" ? var.username : ""
  password = var.password != "" ? var.password : ""
}

resource "helm_release" "default" {
  count               = var.enabled ? 1 : 0
  name                = var.release_name
  repository          = data.helm_repository.default.metadata[0].name
  repository_username = var.username != "" ? var.username : ""
  repository_password = var.password != "" ? var.password : ""
  chart               = var.chart
  devel               = var.devel
  version             = var.chart_version
  values              = var.values

  dynamic "set" {
    for_each = var.set
    content {
      name  = set.value["name"]
      value = set.value["value"]
    }
  }

  dynamic "set_sensitive" {
    for_each = var.set_sensitive
    content {
      name  = set_sensitive.value["name"]
      value = set_sensitive.value["value"]
    }
  }

  namespace        = var.k8s_namespace
  verify           = var.verify
  keyring          = var.keyring
  timeout          = var.timeout
  disable_webhooks = var.disable_webhooks
  reuse_values     = var.reuse_values
  force_update     = var.force_update
  recreate_pods    = var.recreate_pods
  wait             = var.wait
}
