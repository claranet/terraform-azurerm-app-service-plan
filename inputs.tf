variable "client_name" {
  type = "string"
}

variable "environment" {
  type = "string"
}

variable "stack" {
  type = "string"
}

variable "resource_group_name" {
  type = "string"
}

variable "location" {
  description = "Azure location for App Service Plan."
  type        = "string"
}

variable "location_short" {
  description = "Short string for Azure location."
  type        = "string"
}

variable "name_prefix" {
  description = "Optional prefix for the generated name"
  type        = "string"
  default     = ""
}

variable "sku" {
  description = "A sku block. See documentation https://www.terraform.io/docs/providers/azurerm/r/app_service_plan.html#sku"
  type        = "map"
}

variable "kind" {
  description = "The kind of the App Service Plan to create. See documentation https://www.terraform.io/docs/providers/azurerm/r/app_service_plan.html#kind"
  type        = "string"
}

variable "extra_tags" {
  description = "Extra tags to add"
  type        = "map"
  default     = {}
}

variable "per_site_scaling" {
  type    = "string"
  default = "false"
}

variable "custom_name" {
  description = "Name of the App Service Plan, generated if not set."
  type        = "string"
  default     = ""
}

variable "reserved" {
  description = "Is this App Service Plan is Reserved."
  type        = "string"
  default     = "false"
}
