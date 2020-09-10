# # -----------------------------------------------------------------------------
# # Outputs: TF-MOD-HELM 
# # -----------------------------------------------------------------------------

# # Data Source: helm_repository (https://www.terraform.io/docs/providers/helm/repository.html)
# output "helm_repository_metadata" {
#   description = "Status of the deployed release. This includes the name and the URL of the repository read from the home"
#   value = {
#     name = length(data.helm_repository.default) > 0 ? data.helm_repository.default.0.name : null
#     url  = length(data.helm_repository.default) > 0 ? data.helm_repository.default.0.url : null
#   }
# }

# # Resource: helm_release (https://www.terraform.io/docs/providers/helm/release.html)]
# output "helm_release_metadata" {
#   description = "Status of the deployed release. This includes the chart name, name of the release, kubernetes namespace, version of the release, status of the release, version of the chart, and compounded values from 'values' and 'set*' attributes"
#   value = {
#     chart     = length(helm_release.default) > 0 ? helm_release.default[0].chart : null
#     name      = length(helm_release.default) > 0 ? helm_release.default[0].name : null
#     namespace = length(helm_release.default) > 0 ? helm_release.default[0].namespace : null
#     status    = length(helm_release.default) > 0 ? helm_release.default[0].status : null
#     version   = length(helm_release.default) > 0 ? helm_release.default[0].version : null
#     values    = length(helm_release.default) > 0 ? helm_release.default[0].values : null
#   }
# }
