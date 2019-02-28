locals {
  default_tags = {
    env   = "${var.environment}"
    stack = "${var.stack}"
  }

  name_suffix = "${var.name_suffix != "" ? "${var.name_suffix}-" : ""}"

  app_service_plan_name = "${coalesce(var.custom_name, "plan-${var.environment}-${var.location_short}-${var.client_name}-${var.stack}${local.name_suffix}")}"
}
