## 8.0.0 (2024-10-25)

### ⚠ BREAKING CHANGES

* **AZ-1088:** AzureRM Provider v4+ and OpenTofu 1.8+

### Features

* **AZ-1088:** module v8 structure and updates 602b027

### Code Refactoring

* **AZ-1088:** module structure 2d39a96

### Miscellaneous Chores

* **deps:** update dependency claranet/diagnostic-settings/azurerm to v7 65717e8
* **deps:** update dependency claranet/diagnostic-settings/azurerm to v8 af596dc
* **deps:** update dependency opentofu to v1.8.3 c927926
* **deps:** update dependency opentofu to v1.8.4 3691a5a
* **deps:** update dependency pre-commit to v4 c0e39cc
* **deps:** update dependency pre-commit to v4.0.1 0c2e851
* **deps:** update dependency trivy to v0.56.0 dcc2bbf
* **deps:** update dependency trivy to v0.56.1 c1981d1
* **deps:** update dependency trivy to v0.56.2 f1ccc65
* **deps:** update pre-commit hook pre-commit/pre-commit-hooks to v5 aa09fb2
* **deps:** update pre-commit hook tofuutils/pre-commit-opentofu to v2.1.0 c22252c
* prepare for new examples structure b35ea8f
* update examples structure 77af54c

## 7.1.0 (2024-10-03)

### Features

* use Claranet "azurecaf" provider 9d58e2c

### Documentation

* update README badge to use OpenTofu registry c8d0cea
* update README with `terraform-docs` v0.19.0 fd56f73

### Miscellaneous Chores

* **deps:** update dependency opentofu to v1.7.3 734d678
* **deps:** update dependency opentofu to v1.8.0 47486cb
* **deps:** update dependency opentofu to v1.8.1 b33ee18
* **deps:** update dependency opentofu to v1.8.2 2a49a24
* **deps:** update dependency pre-commit to v3.8.0 9369a62
* **deps:** update dependency terraform-docs to v0.19.0 10410da
* **deps:** update dependency tflint to v0.51.2 35dec1a
* **deps:** update dependency tflint to v0.52.0 e2e77d3
* **deps:** update dependency tflint to v0.53.0 7201b7a
* **deps:** update dependency trivy to v0.52.2 03f566c
* **deps:** update dependency trivy to v0.53.0 a5985db
* **deps:** update dependency trivy to v0.54.1 59bd7f0
* **deps:** update dependency trivy to v0.55.0 9119206
* **deps:** update dependency trivy to v0.55.1 e6f15aa
* **deps:** update dependency trivy to v0.55.2 f27aad0
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.17.0 acfdf33
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.18.0 b749ae2
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.0 12c9f42
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.1 a0148c4
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.2 cc27b94
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.3 18dade4
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.93.0 ef4be15
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.0 47d4d45
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.1 4586872
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.2 899beff
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.3 b71dfdf
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.95.0 ce9fbdb
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.96.0 ca21bf0
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.96.1 601cff4

## 7.0.0 (2024-06-14)


### ⚠ BREAKING CHANGES

* bump TF version to `v1.3+`

### Features

* add new SKUs P*mv3 f3e5990
* bump TF version to `v1.3+` a44f53c


### Miscellaneous Chores

* **deps:** update dependency opentofu to v1.7.1 9a236d0
* **deps:** update dependency opentofu to v1.7.2 db79e67
* **deps:** update dependency pre-commit to v3.7.1 4e8aba6
* **deps:** update dependency terraform-docs to v0.18.0 8a16bc3
* **deps:** update dependency tflint to v0.51.1 1b20abb
* **deps:** update dependency trivy to v0.51.0 f0a9acd
* **deps:** update dependency trivy to v0.51.1 48a8e2d
* **deps:** update dependency trivy to v0.51.2 3ba77ef
* **deps:** update dependency trivy to v0.51.3 0a67177
* **deps:** update dependency trivy to v0.51.4 7f5ecfa
* **deps:** update dependency trivy to v0.52.0 cf4ad0a
* **deps:** update dependency trivy to v0.52.1 61b06ee

## 6.5.0 (2024-05-03)


### Features

* **AZ-1405:** add ternary condition for `zone_balancing_enabled` parameter 86a825c


### Continuous Integration

* **AZ-1391:** enable semantic-release [skip ci] e34bb61
* **AZ-1391:** update semantic-release config [skip ci] e030b16


### Miscellaneous Chores

* **deps:** add renovate.json b22da40
* **deps:** enable automerge on renovate e242ac7
* **deps:** update dependency opentofu to v1.7.0 d0f4826
* **deps:** update dependency tflint to v0.51.0 bf4caec
* **deps:** update dependency trivy to v0.50.2 48f6f9f
* **deps:** update dependency trivy to v0.50.4 6f873a9
* **deps:** update renovate.json a538908
* **pre-commit:** update commitlint hook bed5b55
* **release:** remove legacy `VERSION` file c822235

# v6.4.0 - 2024-01-26

Added
  * AZ-1336: Add `zone_balancing_enabled` parameter

# v6.3.0 - 2023-12-01

Added
  * AZ-1285: Add `P0v3` to possible values for `sku_name`

# v6.2.0 - 2023-09-01

Breaking
  * AZ-1153: Remove `retention_days` parameters, it must be handled at destination level now. (for reference: [Provider issue](https://github.com/hashicorp/terraform-provider-azurerm/issues/23051))

# v6.1.1 - 2022-12-12

Fixed
  * AZ-908: Bump Diagnostic Settings module to `v6.2.0`

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
