resource "azurerm_service_plan" "plan" {
  name = local.app_service_plan_name

  location            = var.location
  resource_group_name = var.resource_group_name

  os_type  = var.os_type
  sku_name = var.sku_name

  worker_count                 = coalesce(var.worker_count, local.default_worker_count)
  maximum_elastic_worker_count = var.maximum_elastic_worker_count

  app_service_environment_id = var.app_service_environment_id
  per_site_scaling_enabled   = var.per_site_scaling_enabled

  tags = merge(local.default_tags, var.extra_tags)
}

moved {
  from = azurerm_app_service_plan.plan
  to   = azurerm_service_plan.plan
}
