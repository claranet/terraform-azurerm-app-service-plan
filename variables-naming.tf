# Generic naming variables
variable "name_prefix" {
  description = "Optional prefix for the generated name"
  type        = string
  default     = ""
}

# Custom naming override
variable "custom_name" {
  description = "Name of the App Service Plan, generated if not set."
  type        = string
  default     = ""
}
