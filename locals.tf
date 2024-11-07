locals {
  zone_balancing_enabled = contains(["Y1", "B1", "B2", "B3", "S1", "S2", "S3"], var.sku_name) ? false : var.zone_balancing_enabled
  worker_count           = var.sku_name == "Y1" ? null : var.worker_count
}
