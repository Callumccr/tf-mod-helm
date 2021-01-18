## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| helm | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| chart | (Required) Chart name to be installed | `string` | n/a | yes |
| atomic | (Optional) If set, installation process purges chart on fail. The wait flag will be set automatically if atomic is used. Defaults to false. | `bool` | `false` | no |
| aws\_account\_id | The AWS account id of the provider being deployed to (e.g. 12345678). Autoloaded from account.tfvars | `string` | `""` | no |
| aws\_assume\_role\_arn | ARN of the IAM role when optionally connecting to AWS via assumed role. Autoloaded from account.tfvars. | `string` | `""` | no |
| aws\_region | The AWS region (e.g. ap-southeast-2). Autoloaded from region.tfvars. | `string` | `""` | no |
| ca\_file | (Optional) Verify certificates of HTTPS-enabled servers using this CA bundle | `string` | `""` | no |
| cert\_file | (Optional) Identify HTTPS client using this SSL certificate file | `string` | `""` | no |
| chart\_version | (Optional) Specify the exact chart version to install. If this is not specified, the latest version is installed | `string` | `""` | no |
| create\_namespace | (Optional) Create the namespace if it does not yet exist. Defaults to false. | `bool` | `false` | no |
| dependency\_update | (Optional) Runs helm dependency update before installing the chart. Defaults to false. | `bool` | `false` | no |
| devel | (Optional) Use chart development versions, too. Equivalent to version '>0.0.0-0'. If version is set, this is ignored | `bool` | `false` | no |
| disable\_openapi\_validation | (Optional) If set, the installation process will not validate rendered templates against the Kubernetes OpenAPI Schema. Defaults to false. | `bool` | `false` | no |
| disable\_webhooks | (Optional) Prevent hooks from running | `bool` | `false` | no |
| enabled | (Optional). A Switch that decides whether to create the module. Default is true | `bool` | `true` | no |
| force\_update | (Optional) Force resource update through delete/recreate if needed | `bool` | `true` | no |
| k8s\_namespace | (Optional) The namespace to install the release into. Defaults to default. | `string` | `"default"` | no |
| key\_file | (Optional) Identify HTTPS client using this SSL key file | `string` | `""` | no |
| keyring | (Optional) Location of public keys used for verification. Used only if verify is true. Defaults to /.gnupg/pubring.gpg in the location set by home | `string` | `"/.gnupg/pubring.gpg"` | no |
| kubeconfig\_context | (Required) The context to use from the `kubeconfig` file | `string` | `""` | no |
| kubeconfig\_path | The path to `kubeconfig` file | `string` | `"~/.kube/config"` | no |
| lint | (Optional) Run the helm chart linter during the plan. Defaults to false. | `bool` | `false` | no |
| postrender | (Optional) Configure a command to run after helm renders the manifest which can alter the manifest contents. | `string` | `""` | no |
| recreate\_pods | (Optional) On update performs pods restart for the resource if applicable | `bool` | `false` | no |
| release\_name | (Required) Release name | `string` | `""` | no |
| render\_subchart\_notes | (Optional) If set, render subchart notes along with the parent. Defaults to true. | `bool` | `true` | no |
| replace | (Optional) Re-use the given name, even if that name is already used. This is unsafe in production. Defaults to false. | `bool` | `false` | no |
| repository | (Optional) Repository URL where to locate the requested chart. | `string` | `""` | no |
| repository\_password | (Optional) Password for HTTP basic authentication | `string` | `""` | no |
| repository\_username | (Optional) Username for HTTP basic authentication | `string` | `""` | no |
| reuse\_values | (Optional) Reuse values from previous revision when upgrading a release. Same as --reuse-values flag in Helm CLI. Default is false | `bool` | `false` | no |
| set | (Optional) Value block with custom values to be merged with the values yaml | <pre>list(object({<br>    name  = string<br>    value = string<br>  }))</pre> | <pre>[<br>  {<br>    "name": "",<br>    "value": ""<br>  }<br>]</pre> | no |
| set\_sensitive | (Optional) Value block with custom sensitive values to be merged with the values yaml that won't be exposed in the plan's diff | <pre>list(object({<br>    name  = string<br>    value = string<br>  }))</pre> | <pre>[<br>  {<br>    "name": "",<br>    "value": ""<br>  }<br>]</pre> | no |
| skip\_crds | (Optional) If set, no CRDs will be installed. By default, CRDs are installed if not already present. Defaults to false. | `bool` | `false` | no |
| timeout | (Optional) Time in seconds to wait for any individual kubernetes operation | `number` | `30` | no |
| values | (Optional) List of values in raw yaml to pass to helm. Values will be merged, in order, as Helm does with multiple -f options | `list(any)` | `[]` | no |
| verify | (Optional) Verify the package before installing it. Helm uses a provenance file to verify the integrity of the chart; this must be hosted alongside the chart. For more information see the Helm Documentation. Defaults to false. | `bool` | `false` | no |
| wait | (Optional) Will wait until all Pods, PVCs, Services, and minimum number of Pods of a Deployment are in a ready state before marking the release as successful. It will wait for as long as timeout. Default is true | `bool` | `false` | no |

## Outputs

No output.

