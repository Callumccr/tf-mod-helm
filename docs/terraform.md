## Providers

| Name | Version |
|------|---------|
| helm | v0.10.4 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| chart | (Required) Chart name to be installed | `any` | n/a | yes |
| kubeconfig\_context | (Required) The context to use from the `kubeconfig` file | `string` | n/a | yes |
| release\_name | (Required) Release name | `any` | n/a | yes |
| aws\_account\_id | The AWS account id of the provider being deployed to (e.g. 12345678). Autoloaded from account.tfvars | `string` | `""` | no |
| aws\_assume\_role\_arn | ARN of the IAM role when optionally connecting to AWS via assumed role. Autoloaded from account.tfvars. | `string` | `""` | no |
| aws\_region | The AWS region (e.g. ap-southeast-2). Autoloaded from region.tfvars. | `string` | `""` | no |
| ca\_file | (Optional) Verify certificates of HTTPS-enabled servers using this CA bundle | `string` | `""` | no |
| cert\_file | (Optional) Identify HTTPS client using this SSL certificate file | `string` | `""` | no |
| chart\_repository\_name | (Required) Chart repository name | `string` | `""` | no |
| chart\_repository\_url | (Required) Chart repository URL. | `string` | `""` | no |
| chart\_version | (Optional) Specify the exact chart version to install. If this is not specified, the latest version is installed | `string` | `"1.8.4"` | no |
| devel | (Optional) Use chart development versions, too. Equivalent to version '>0.0.0-0'. If version is set, this is ignored | `bool` | `false` | no |
| disable\_webhooks | (Optional) Prevent hooks from running | `bool` | `false` | no |
| enabled | (Optional). A Switch that decides whether to create the module. Default is true | `bool` | `true` | no |
| force\_update | (Optional) Force resource update through delete/recreate if needed | `bool` | `true` | no |
| key\_file | (Optional) Identify HTTPS client using this SSL key file | `string` | `""` | no |
| keyring | (Optional) Location of public keys used for verification | `string` | `""` | no |
| kubeconfig\_path | The path to `kubeconfig` file | `string` | `"~/.kube/config"` | no |
| namespace | (Optional) Namespace to install the release into | `string` | `""` | no |
| password | (Optional) Password for HTTP basic authentication | `string` | `""` | no |
| recreate\_pods | (Optional) On update performs pods restart for the resource if applicable | `bool` | `false` | no |
| repository | (Optional) Repository where to locate the requested chart. If is an URL the chart is installed without install the repository | `string` | `""` | no |
| reuse | (Optional) Instructs Tiller to re-use an existing name. Default is true | `bool` | `true` | no |
| reuse\_values | (Optional) Reuse values from previous revision when upgrading a release. Same as --reuse-values flag in Helm CLI. Default is false | `bool` | `false` | no |
| set | (Optional) Value block with custom values to be merged with the values yaml | <code><pre>list(object({<br>    name  = string<br>    value = string<br>  }))<br></pre></code> | <code><pre>[<br>  {<br>    "name": "",<br>    "value": ""<br>  }<br>]<br></pre></code> | no |
| set\_sensitive | (Optional) Value block with custom sensitive values to be merged with the values yaml that won't be exposed in the plan's diff | <code><pre>list(object({<br>    name  = string<br>    value = string<br>  }))<br></pre></code> | <code><pre>[<br>  {<br>    "name": "",<br>    "value": ""<br>  }<br>]<br></pre></code> | no |
| set\_string | (Optional) Value block with custom STRING values to be merged with the values yaml | <code><pre>list(object({<br>    name  = string<br>    value = string<br>  }))<br></pre></code> | <code><pre>[<br>  {<br>    "name": "",<br>    "value": ""<br>  }<br>]<br></pre></code> | no |
| tiller\_service\_account | The name of the service account for tiller | `string` | `"helm-tiller"` | no |
| timeout | (Optional) Time in seconds to wait for any individual kubernetes operation | `number` | `30` | no |
| username | (Optional) Username for HTTP basic authentication | `string` | `""` | no |
| values | (Optional) List of values in raw yaml to pass to helm. Values will be merged, in order, as Helm does with multiple -f options | `list` | `[]` | no |
| verify | (Optional) Verify the package before installing it | `bool` | `true` | no |
| wait | (Optional) Will wait until all Pods, PVCs, Services, and minimum number of Pods of a Deployment are in a ready state before marking the release as successful. It will wait for as long as timeout. Default is true | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| helm\_release\_metadata | Status of the deployed release. This includes the chart name, name of the release, kubernetes namespace, version of the release, status of the release, version of the chart, and compounded values from 'values' and 'set\*' attributes |
| helm\_repository\_metadata | Status of the deployed release. This includes the name and the URL of the repository read from the home |

