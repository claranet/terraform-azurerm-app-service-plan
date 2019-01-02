locals {
  default_tags = {
    env   = "${var.environment}"
    stack = "${var.stack}"
  }

  app_service_plan_name = "${var.custom_name == "" ? format("%s%s", "plan-${var.environment}-${var.location_short}-${var.client_name}-${var.stack}", var.name_suffix) : var.custom_name}"
}
