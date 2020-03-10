provider "helm" {
  version         = "v0.10.4"
  install_tiller  = true
  tiller_image    = "gcr.io/kubernetes-helm/tiller:v2.15.1"
  service_account = var.tiller_service_account
  namespace       = "kube-system"
  kubernetes {
    config_path     = var.kubeconfig_path
    config_context  = var.kubeconfig_context
  }
}