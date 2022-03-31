locals {
  default_worker_count = var.sku_name == "Y1" ? null : 2
}
