output "resource" {
  description = "Azure App Service Plan resource object."
  value       = azurerm_service_plan.main
}

output "id" {
  description = "ID of the created Service Plan."
  value       = azurerm_service_plan.main.id
}

output "name" {
  description = "Name of the created Service Plan."
  value       = azurerm_service_plan.main.name
}

output "location" {
  description = "Azure location of the created Service Plan."
  value       = azurerm_service_plan.main.location
}

output "module_diagnostics" {
  description = "Diagnostics Settings module output."
  value       = module.diagnostics
}
