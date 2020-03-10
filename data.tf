data "helm_repository" "default" {
  count     = var.enabled && var.chart_repository_url != "" ? 1 : 0
  name      = var.chart_repository_name
  url       = var.chart_repository_url
  key_file  = var.key_file
  cert_file = var.cert_file
  ca_file   = var.ca_file
  username  = var.username
  password  = var.password
}
