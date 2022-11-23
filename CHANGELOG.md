# v6.1.0 - 2022-11-23

Changed
  * AZ-908: Use the new data source for CAF naming (instead of resource)

# v6.0.0 - 2022-05-20

Breaking
  * AZ-717: Require Terraform 1.0+
  * AZ-717: Bump AzureRM provider version to `v3.0+`
  * AZ-717: Use the new resource `azurerm_service_plan`

# v5.1.0 - 2022-02-03

Added
  * AZ-615: Add an option to enable or disable default tags

# v5.0.1 - 2022-01-12

Fixed
  * AZ-515: Fix CAF naming and update Diag settings module with CAF naming too

# v5.0.0 - 2021-11-24

Breaking
  * AZ-515: Option to use Azure CAF naming provider to name resources
  * AZ-515: Require Terraform 0.13+

Changed
  * AZ-572: Revamp examples and improve CI

Updated:
  * AZ-589: Update diagnostics settings to `v4.0.3`

# v4.1.1 - 2021-08-27

Changed
  * AZ-532: Revamp README with latest `terraform-docs` tool

# v4.1.0 - 2021-06-07

Breaking
  * AZ-160: Unify diagnostics settings on all Claranet modules

# v4.0.0 - 2020-12-30

Changed
  * AZ-398: Force lowercases on default generated name

Added
  * AZ-365: Add diagnostics settings

Updated
  * AZ-273: Module now compatible terraform `v0.13+`

# v3.1.0 - 2020-08-25

Breaking
  * AZ-245: Force AzureRM 2.21.0 to avoid bug with linux function app


# v2.0.1/v3.0.0 - 2020-07-13

Changed
  * AZ-206: Update README, CI, module compatible both AzureRM provider < 2.0 and >= 2.0

# v2.0.0 - 2019-10-29

Breaking
  * AZ-94: Terraform 0.12 / HCL2 format

Added
  * AZ-118: Add LICENSE, NOTICE & Github badges
  * AZ-119: Add CONTRIBUTING.md doc and `terraform-wrapper` usage with the module

Changed
  * AZ-119: Revamp README and publish this module to Terraform registry

# v1.1.1 - 2019-05-15

Fixed
  * AZ-78: Fix for Windows consumption function support

# v1.1.0 - 2019-04-23

Changed
  * AZ-64: Remove pinned provider version
  * AZ-68: Sets default capacity to 2 workers

# v1.0.0 - 2019-02-28

Added
  * TER-313: First release
