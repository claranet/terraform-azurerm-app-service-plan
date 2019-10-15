locals {
  default_tags = {
    env   = var.environment
    stack = var.stack
  }

  name_prefix = var.name_prefix != "" ? replace(var.name_prefix, "/[a-z0-9]$/", "$0-") : ""

  app_service_plan_name = coalesce(
    var.custom_name,
    "${local.name_prefix}${var.stack}-${var.client_name}-${var.location_short}-${var.environment}-plan",
  )

  default_sku_capacity = var.sku["tier"] == "Dynamic" ? null : 2
}
