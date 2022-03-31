output "service_plan_id" {
  description = "ID of the created Service Plan"
  value       = azurerm_service_plan.plan.id
}

output "service_plan_name" {
  description = "Name of the created Service Plan"
  value       = azurerm_service_plan.plan.name
}

output "service_plan_location" {
  description = "Azure location of the created Service Plan"
  value       = azurerm_service_plan.plan.location
}

output "service_plan_max_workers" {
  description = "Maximum number of workers for the created Service Plan"
  value       = azurerm_service_plan.plan.maximum_number_of_workers
}
