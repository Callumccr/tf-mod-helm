resource "helm_release" "default" {
  count               = var.enabled ? 1 : 0
  name                = var.release_name
  repository          = var.repository
  repository_username = var.repository_username != "" ? var.repository_username : ""
  repository_password = var.repository_password != "" ? var.repository_password : ""
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

  namespace                  = var.k8s_namespace
  create_namespace           = var.create_namespace
  verify                     = var.verify
  keyring                    = var.keyring
  timeout                    = var.timeout
  disable_webhooks           = var.disable_webhooks
  reuse_values               = var.reuse_values
  force_update               = var.force_update
  recreate_pods              = var.recreate_pods
  atomic                     = var.atomic
  skip_crds                  = var.skip_crds
  render_subchart_notes      = var.render_subchart_notes
  disable_openapi_validation = var.disable_openapi_validation
  wait                       = var.wait
  dependency_update          = var.dependency_update
  replace                    = var.replace
  lint                       = var.lint
}
