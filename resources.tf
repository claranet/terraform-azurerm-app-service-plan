resource "azurerm_app_service_plan" "plan" {
  name = "${substr(local.app_service_plan_name, 0, length(local.app_service_plan_name) > 60 ? 59 : -1)}"

  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  kind                = "${var.kind}"
  reserved            = "${var.kind != "Windows" ? true : var.reserved}"

  sku = ["${merge(map("capacity", local.default_sku_capacity), var.sku)}"]

  tags = "${merge(local.default_tags, var.extra_tags)}"
}
