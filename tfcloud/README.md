# Terraform Cloud

This module holds all my Terraform Cloud Configs

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.12 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.67 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.67.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_variable.gcp-project-number](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.gcp-provider-auth](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.gcp-service-account](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.gcp-workload-pool](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.gcp-workload-provider](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_workspace.cloudflare-dns](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_workspace.gcp](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_workspace.gcp-dynamic-credentials](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_workspace.tfcloud-workspaces](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_github_app_installation.github-app](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/github_app_installation) | data source |
| [tfe_outputs.gcp-dynamic-credentials](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/outputs) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api-token"></a> [api-token](#input\_api-token) | Terraform Cloud API Token | `string` | n/a | yes |
| <a name="input_github-app-id"></a> [github-app-id](#input\_github-app-id) | Github App Installation ID for VCS Integration | `string` | n/a | yes |
| <a name="input_github-repo"></a> [github-repo](#input\_github-repo) | Github Repo ID for VCS Integration | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | Terraform Cloud Organization ID | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->