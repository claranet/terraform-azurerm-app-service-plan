locals {
  default_tags = {
    env   = var.environment
    stack = var.stack
  }

  default_sku_capacity = var.sku["tier"] == "Dynamic" ? null : 2
}
