# Azure Umanis Naming

[![Build Status](https://dev.azure.com/umanis-consulting/terraform/_apis/build/status/mod_azu_naming?repoName=mod_azu_naming&branchName=master)](https://dev.azure.com/umanis-consulting/terraform/_build/latest?definitionId=3&repoName=mod_azu_naming&branchName=master) [![Unilicence](https://img.shields.io/badge/licence-The%20Unilicence-green)](LICENCE)


Common Azure Terraform module to normalize naming on ressources. Based on Microsoft CAF naming.

```hcl

module "umanis_naming" {
  source = <<path_to_module>>

  location    = "France Central"
  client      = "XY2"
  project     = "1234"
  area        = 1
  environment = "tst"
}
```
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15.0 |

## Providers

No providers.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_area"></a> [area](#input\_area) | Subproject index (2 digits). | `number` | n/a | yes |
| <a name="input_client"></a> [client](#input\_client) | Code name of the client. Must have 3 alphanumeric chars. | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Code name of the subproject. Must have 4 digits. | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment code (LAB, DEV, TST, REC, OAT, PRD). | `string` | `"DEV"` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region were resources are deployed | `string` | `"France Central"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_resource_group_prefixes"></a> [resource\_group\_prefixes](#output\_resource\_group\_prefixes) | Resource group name prefixes for CAF module. |
| <a name="output_resource_prefixes"></a> [resource\_prefixes](#output\_resource\_prefixes) | Resource name prefixes for CAF module. |
<!-- END_TF_DOCS -->