# No resource group in this module because I have a seperate resource group module that I built in a different folder. 
resource "azurerm_storage_account" "azstorage" {
  name                     = "${var.storage_account_name}"
  resource_group_name      = var.function_resource_group
  location                 = var.function_location
  account_tier             = var.function_account_tier
  account_replication_type = var.function_account_replication_type
}

resource "azurerm_service_plan" "azservice" {
  name                = "${var.service_plan_name}-service-plan"
  resource_group_name = var.function_resource_group
  location            = var.function_location
  os_type             = var.function_os_type
  sku_name            = var.function_sku_name
}

resource "azurerm_linux_function_app" "azfunction" {
  name                = "${var.name}-function-app"
  resource_group_name = var.function_resource_group
  location            = var.function_location
  storage_account_name = azurerm_storage_account.azstorage.name
  service_plan_id      = azurerm_service_plan.azservice.id

  site_config {}
}
