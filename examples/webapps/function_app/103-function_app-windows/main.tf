module "caf" {
  source  = "aztfmod/caf/azurerm"
  version = "5.3.11"

  global_settings = var.global_settings
  resource_groups = var.resource_groups
  storage_accounts = var.storage_accounts

  webapp = {
    app_service_plans = var.app_service_plans
    function_apps = var.function_apps
  }
}
