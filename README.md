# Azure App Service Plan

## Purpose
This Terraform module creates an [Azure App Service Plan](https://docs.microsoft.com/en-us/azure/app-service/overview-hosting-plans).

## Requirements
* Azure provider >= 1.20.0

## Usage
You can use this module by including it this way:
```
module "az-region" {
  source = "git::ssh://git@git.fr.clara.net/claranet/cloudnative/projects/cloud/azure/terraform/modules/regions.git?ref=vX.X.X"

  azure_region = "${var.azure_region}"
}

module "rg" {
  source = "git::ssh://git@git.fr.clara.net/claranet/cloudnative/projects/cloud/azure/terraform/modules/rg.git?ref=vX.X.X"

  azure_region = "${module.az-region.location}"
  client_name  = "${var.client_name}"
  environment  = "${var.environment}"
  stack        = "${var.stack}"
}

module "app_service_plan" {
  source = "git::ssh://git@git.fr.clara.net/claranet/cloudnative/projects/cloud/azure/terraform/modules/app-service-plan.git?ref=vX.X.X"

  client_name         = "${var.client_name}"
  environment         = "${var.environment}"
  stack               = "${var.stack}"
  resource_group_name = "${module.rg.resource_group_name}"
  location            = "${module.az-region.location}"
  location_short      = "${module.az-region.location-short}"
  custom_name         = "foobar"

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
|------|-------------|:----:|:-----:|:-----:|
| client_name |  | string | - | yes |
| custom_name | Name of the App Service Plan, generated if not set. | string | `` | no |
| environment |  | string | - | yes |
| extra_tags | Extra tags to add | map | `<map>` | no |
| kind | The kind of the App Service Plan to create. See documentation https://www.terraform.io/docs/providers/azurerm/r/app_service_plan.html#kind | string | - | yes |
| location | Azure location for App Service Plan. | string | - | yes |
| location_short | Short string for Azure location. | string | - | yes |
| name_prefix | Optional prefix for the generated name | string | `` | no |
| per_site_scaling |  | string | `false` | no |
| resource_group_name |  | string | - | yes |
| sku | A sku block. See documentation https://www.terraform.io/docs/providers/azurerm/r/app_service_plan.html#sku | map | - | yes |
| stack |  | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| app_service_plan_id | Id of the created App Service Plan |
| app_service_plan_location | Azure location of the created App Service Plan |
| app_service_plan_max_workers | Maximum number of workers for the created App Service Plan |
| app_service_plan_name | Name of the created App Service Plan |

## Related documentation
Terraform resource documentation: [https://www.terraform.io/docs/providers/azurerm/r/app_service_plan.html]

Microsoft Azure documentation: [https://docs.microsoft.com/en-us/azure/app-service/overview-hosting-plans]
