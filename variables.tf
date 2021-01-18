
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

variable "kubeconfig_path" {
  type        = string
  default     = "~/.kube/config"
  description = "The path to `kubeconfig` file"
}

variable "kubeconfig_context" {
  type        = string
  description = "(Required) The context to use from the `kubeconfig` file"
  default     = ""
}

variable "repository" {
  description = "(Optional) Repository URL where to locate the requested chart."
  type        = string
  default     = ""
}

variable "repository_username" {
  description = "(Optional) Username for HTTP basic authentication"
  type        = string
  default     = ""
}

variable "repository_password" {
  description = "(Optional) Password for HTTP basic authentication"
  type        = string
  default     = ""
}

variable "chart" {
  description = "(Required) Chart name to be installed"
  type        = string
}

variable "chart_version" {
  description = "(Optional) Specify the exact chart version to install. If this is not specified, the latest version is installed"
  type        = string
  default     = ""
}

variable "key_file" {
  description = "(Optional) Identify HTTPS client using this SSL key file"
  type        = string
  default     = ""
}

variable "cert_file" {
  description = "(Optional) Identify HTTPS client using this SSL certificate file"
  type        = string
  default     = ""
}

variable "ca_file" {
  description = "(Optional) Verify certificates of HTTPS-enabled servers using this CA bundle"
  type        = string
  default     = ""
}

variable "release_name" {
  description = "(Required) Release name"
  type        = string
  default     = ""
}

variable "devel" {
  description = "(Optional) Use chart development versions, too. Equivalent to version '>0.0.0-0'. If version is set, this is ignored"
  type        = bool
  default     = false
}

variable "values" {
  description = "(Optional) List of values in raw yaml to pass to helm. Values will be merged, in order, as Helm does with multiple -f options"
  type        = list(any)
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

variable "k8s_namespace" {
  description = "(Optional) The namespace to install the release into. Defaults to default."
  type        = string
  default     = "default"
}

variable "verify" {
  description = "(Optional) Verify the package before installing it. Helm uses a provenance file to verify the integrity of the chart; this must be hosted alongside the chart. For more information see the Helm Documentation. Defaults to false."
  type        = bool
  default     = false
}

variable "keyring" {
  description = "(Optional) Location of public keys used for verification. Used only if verify is true. Defaults to /.gnupg/pubring.gpg in the location set by home"
  type        = string
  default     = "/.gnupg/pubring.gpg"
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
  type        = bool
  default     = false
}

variable "force_update" {
  description = "(Optional) Force resource update through delete/recreate if needed"
  type        = bool
  default     = true
}

variable "recreate_pods" {
  description = "(Optional) On update performs pods restart for the resource if applicable"
  type        = bool
  default     = false
}


variable "atomic" {
  description = "(Optional) If set, installation process purges chart on fail. The wait flag will be set automatically if atomic is used. Defaults to false."
  type        = bool
  default     = false
}

variable "skip_crds" {
  description = "(Optional) If set, no CRDs will be installed. By default, CRDs are installed if not already present. Defaults to false."
  type        = bool
  default     = false
}

variable "render_subchart_notes" {
  description = "(Optional) If set, render subchart notes along with the parent. Defaults to true."
  type        = bool
  default     = true
}

variable "disable_openapi_validation" {
  description = "(Optional) If set, the installation process will not validate rendered templates against the Kubernetes OpenAPI Schema. Defaults to false."
  type        = bool
  default     = false
}

variable "wait" {
  description = "(Optional) Will wait until all Pods, PVCs, Services, and minimum number of Pods of a Deployment are in a ready state before marking the release as successful. It will wait for as long as timeout. Default is true"
  type        = bool
  default     = false
}

variable "dependency_update" {
  description = "(Optional) Runs helm dependency update before installing the chart. Defaults to false."
  type        = bool
  default     = false
}

variable "replace" {
  type        = bool
  description = "(Optional) Re-use the given name, even if that name is already used. This is unsafe in production. Defaults to false."
  default     = false
}

variable "postrender" {
  type        = string
  description = "(Optional) Configure a command to run after helm renders the manifest which can alter the manifest contents."
  default     = ""
}

variable "lint" {
  type        = bool
  description = "(Optional) Run the helm chart linter during the plan. Defaults to false."
  default     = false
}

variable "create_namespace" {
  type        = bool
  description = "(Optional) Create the namespace if it does not yet exist. Defaults to false."
  default     = false
}
