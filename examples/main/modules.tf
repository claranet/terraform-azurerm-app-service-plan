module "app_service_plan" {
  source  = "claranet/app-service-plan/azurerm"
  version = "x.x.x"

  client_name         = var.client_name
  environment         = var.environment
  stack               = var.stack
  resource_group_name = module.rg.name
  location            = module.azure_region.location
  location_short      = module.azure_region.location_short

  logs_destinations_ids = [
    # module.logs.logs_storage_account_id,
    # module.logs.log_analytics_workspace_id
  ]

  os_type  = "Linux"
  sku_name = "B2"

  extra_tags = {
    foo = "bar"
  }
}
