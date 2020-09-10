
# -----------------------------------------------------------------------------
# Variables: Common AWS Provider - Autoloaded from Terragrunt
# -----------------------------------------------------------------------------

variable "aws_region" {
  description = "The AWS region (e.g. ap-southeast-2). Autoloaded from region.tfvars."
  type        = string
  default     = ""
}

variable "aws_account_id" {
  description = "The AWS account id of the provider being deployed to (e.g. 12345678). Autoloaded from account.tfvars"
  type        = string
  default     = ""
}

variable "aws_assume_role_arn" {
  description = "ARN of the IAM role when optionally connecting to AWS via assumed role. Autoloaded from account.tfvars."
  type        = string
  default     = ""
}

# -----------------------------------------------------------------------------
# Variables: TF-MOD-HELM 
# -----------------------------------------------------------------------------

variable "enabled" {
  description = "(Optional). A Switch that decides whether to create the module. Default is true"
  type        = bool
  default     = true
}

variable "kubeconfig_path" {
  type        = string
  default     = "~/.kube/config"
  description = "The path to `kubeconfig` file"
}

# variable "kubeconfig_context" {
#   type        = string
#   description = "(Required) The context to use from the `kubeconfig` file"
# }

variable "tiller_service_account" {
  type        = string
  default     = "helm-tiller"
  description = "The name of the service account for tiller"
}

# Data Source: helm_repository (https://www.terraform.io/docs/providers/helm/repository.html)
variable "chart_repository_name" {
  description = "(Required) Chart repository name"
  type        = string
  default     = ""
}

variable "chart_repository_url" {
  description = "(Required) Chart repository URL."
  type        = string
  default     = ""
}

variable "key_file" {
  description = "(Optional) Identify HTTPS client using this SSL key file"
  type        = any
  default     = ""
}

variable "cert_file" {
  description = "(Optional) Identify HTTPS client using this SSL certificate file"
  type        = any
  default     = ""
}

variable "ca_file" {
  description = "(Optional) Verify certificates of HTTPS-enabled servers using this CA bundle"
  type        = any
  default     = ""
}

variable "username" {
  description = "(Optional) Username for HTTP basic authentication"
  type        = any
  default     = ""
}

variable "password" {
  description = "(Optional) Password for HTTP basic authentication"
  type        = any
  default     = ""
}

# Resource: helm_release (https://www.terraform.io/docs/providers/helm/release.html)
variable "release_name" {
  description = "(Required) Release name"
  type        = any
}

variable "chart" {
  description = "(Required) Chart name to be installed"
  type        = any
}


variable "repository" {
  description = "(Optional) Repository where to locate the requested chart. If is an URL the chart is installed without install the repository"
  type        = any
  default     = ""
}

variable "devel" {
  description = "(Optional) Use chart development versions, too. Equivalent to version '>0.0.0-0'. If version is set, this is ignored"
  type        = bool
  default     = false
}

variable "chart_version" {
  description = "(Optional) Specify the exact chart version to install. If this is not specified, the latest version is installed"
  type        = string
  default     = "1.8.4"
}

variable "values" {
  description = "(Optional) List of values in raw yaml to pass to helm. Values will be merged, in order, as Helm does with multiple -f options"
  type        = any
  default     = []
}

variable "set" {
  description = "(Optional) Value block with custom values to be merged with the values yaml"
  type = list(object({
    name  = string
    value = string
  }))
  default = [
    {
      name  = ""
      value = ""
    }
  ]
}

variable "set_sensitive" {
  description = "(Optional) Value block with custom sensitive values to be merged with the values yaml that won't be exposed in the plan's diff"
  type = list(object({
    name  = string
    value = string
  }))
  default = [
    {
      name  = ""
      value = ""
    }
  ]
}

variable "set_string" {
  description = "(Optional) Value block with custom STRING values to be merged with the values yaml"
  type = list(object({
    name  = string
    value = string
  }))
  default = [
    {
      name  = ""
      value = ""
    }
  ]
}

variable "namespace" {
  description = "(Optional) Namespace to install the release into"
  type        = any
  default     = ""
}

variable "verify" {
  description = "(Optional) Verify the package before installing it"
  type        = bool
  default     = true
}

variable "keyring" {
  description = "(Optional) Location of public keys used for verification"
  type        = any
  default     = ""
}

variable "timeout" {
  description = "(Optional) Time in seconds to wait for any individual kubernetes operation"
  type        = number
  default     = 30
}

variable "disable_webhooks" {
  description = "(Optional) Prevent hooks from running"
  type        = bool
  default     = false
}

variable "reuse_values" {
  description = "(Optional) Reuse values from previous revision when upgrading a release. Same as --reuse-values flag in Helm CLI. Default is false"
  type        = any
  default     = false
}

variable "force_update" {
  description = "(Optional) Force resource update through delete/recreate if needed"
  type        = bool
  default     = true
}

variable "reuse" {
  description = "(Optional) Instructs Tiller to re-use an existing name. Default is true"
  type        = bool
  default     = true
}

variable "recreate_pods" {
  description = "(Optional) On update performs pods restart for the resource if applicable"
  type        = bool
  default     = false
}

variable "wait" {
  description = "(Optional) Will wait until all Pods, PVCs, Services, and minimum number of Pods of a Deployment are in a ready state before marking the release as successful. It will wait for as long as timeout. Default is true"
  type        = bool
  default     = false
}
