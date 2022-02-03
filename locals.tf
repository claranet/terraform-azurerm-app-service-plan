locals {
  default_sku_capacity = var.sku["tier"] == "Dynamic" ? null : 2
}
