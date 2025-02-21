module "app_service_plan" {
  source  = "claranet/app-service-plan/azurerm"
  version = "x.x.x"

  client_name         = var.client_name
  environment         = var.environment
  stack               = var.stack
  resource_group_name = module.rg.name
  location            = module.azure_region.location
  location_short      = module.azure_region.location_short

  worker_count = null # Set worker_count to null to prevent drift from autoscaling, resource will initially be created with 1 worker

  logs_destinations_ids = [
    module.run.logs_storage_account_id,
    module.run.log_analytics_workspace_id,
  ]

  os_type  = "Linux"
  sku_name = "P0v3"

  extra_tags = {
    foo = "bar"
  }
}

module "autoscale" {
  source  = "claranet/autoscale/azurerm"
  version = "x.x.x"

  client_name         = var.client_name
  environment         = var.environment
  stack               = var.stack
  location            = module.azure_region.location
  location_short      = module.azure_region.location_short
  resource_group_name = module.rg.name

  target_resource_id = module.app_service_plan.id

  profile = {
    "default" = {
      capacity = {
        default = 1
        minimum = 1
        maximum = 5
      }
      rules = [
        {
          metric_trigger = {
            metric_name        = "CpuPercentage"
            metric_resource_id = module.app_service_plan.id
            time_grain         = "PT1M"
            time_window        = "PT5M"
            time_aggregation   = "Average"
            statistic          = "Average"
            operator           = "GreaterThan"
            threshold          = 75
          }

          scale_action = {
            direction = "Increase"
            type      = "ChangeCount"
            value     = "1"
            cooldown  = "PT1M"
          }
        },
        {
          metric_trigger = {
            metric_name        = "CpuPercentage"
            metric_resource_id = module.app_service_plan.id
            time_grain         = "PT1M"
            time_window        = "PT5M"
            time_aggregation   = "Average"
            statistic          = "Average"
            operator           = "LessThan"
            threshold          = 25
          }

          scale_action = {
            direction = "Decrease"
            type      = "ChangeCount"
            value     = "1"
            cooldown  = "PT1M"
          }
        }
      ]
    }
  }

  logs_destinations_ids = [module.run.log_analytics_workspace_id]
}
