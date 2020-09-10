provider "helm" {
  version   = "v0.10.4"
  namespace = "kube-system"
  kubernetes {
    config_path    = var.kubeconfig_path
    config_context = var.kubeconfig_context
  }
}
