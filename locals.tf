locals {
  zone_balancing_enabled = var.sku_name == "Y1" ? false : var.zone_balancing_enabled
  worker_count           = var.sku_name == "Y1" ? null : var.worker_count
}
