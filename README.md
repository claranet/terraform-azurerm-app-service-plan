# Azure App Service Plan
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/modules/claranet/app-service-plan/azurerm/)

This Terraform module creates an [Azure App Service Plan](https://docs.microsoft.com/en-us/azure/app-service/overview-hosting-plans)
with default SKU capacity sets to "2" for dedicated plans.

## Requirements and limitations

* [Mixing Windows and Linux apps in the same resource group is not supported by Azure](https://docs.microsoft.com/en-us/azure/app-service/containers/app-service-linux-intro#limitations)

## Version compatibility

| Module version    | Terraform version | AzureRM version |
|-------------------|-------------------|-----------------|
| >= 3.x.x          | 0.12.x            | >= 2.0          |
| >= 2.x.x, < 3.x.x | 0.12.x            | <  2.0          |
| <  2.x.x          | 0.11.x            | <  2.0          |

## Usage

This module is optimized to work with the [Claranet terraform-wrapper](https://github.com/claranet/terraform-wrapper) tool
which set some terraform variables in the environment needed by this module.
More details about variables set by the `terraform-wrapper` available in the [documentation](https://github.com/claranet/terraform-wrapper#environment).

```hcl
module "azure-region" {
  source  = "claranet/regions/azurerm"
  version = "x.x.x"

  azure_region = var.azure_region
}

module "rg" {
  source  = "claranet/rg/azurerm"
  version = "x.x.x"

  location     = module.azure-region.location
  client_name  = var.client_name
  environment  = var.environment
  stack        = var.stack
}

module "app_service_plan" {
  source  = "claranet/app-service-plan/azurerm"
  version = "x.x.x"

  client_name         = var.client_name
  environment         = var.environment
  stack               = var.stack
  resource_group_name = module.rg.resource_group_name
  location            = module.azure-region.location
  location_short      = module.azure-region.location_short

  sku = {
    tier = "Basic"
    size = "B2"
  }

  kind = "Linux"

  extra_tags = {
    foo = "bar"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| client\_name | Client name/account used in naming | `string` | n/a | yes |
| custom\_name | Name of the App Service Plan, generated if not set. | `string` | `""` | no |
| environment | Project environment | `string` | n/a | yes |
| extra\_tags | Extra tags to add | `map(string)` | `{}` | no |
| kind | The kind of the App Service Plan to create. See documentation https://www.terraform.io/docs/providers/azurerm/r/app_service_plan.html#kind | `string` | n/a | yes |
| location | Azure location. | `string` | n/a | yes |
| location\_short | Short string for Azure location. | `string` | n/a | yes |
| name\_prefix | Optional prefix for the generated name | `string` | `""` | no |
| reserved | Flag indicating if App Service Plan should be reserved. Forced to true if "kind" is "Linux". | `string` | `"false"` | no |
| resource\_group\_name | Resource group name | `string` | n/a | yes |
| sku | A sku block. See documentation https://www.terraform.io/docs/providers/azurerm/r/app_service_plan.html#sku | `map(string)` | n/a | yes |
| stack | Project stack name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| app\_service\_plan\_id | Id of the created App Service Plan |
| app\_service\_plan\_location | Azure location of the created App Service Plan |
| app\_service\_plan\_max\_workers | Maximum number of workers for the created App Service Plan |
| app\_service\_plan\_name | Name of the created App Service Plan |

## Related documentation

Terraform resource documentation: [www.terraform.io/docs/providers/azurerm/r/app_service_plan.html](https://www.terraform.io/docs/providers/azurerm/r/app_service_plan.html)

Microsoft Azure documentation: [docs.microsoft.com/en-us/azure/app-service/overview-hosting-plans](https://docs.microsoft.com/en-us/azure/app-service/overview-hosting-plans)
