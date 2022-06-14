# More advance stuff
# Create an Azure API Management (APIM) -----------

# This is a module pulled from Terraform repo simliar to Docker repo.
# Create an Azure Region 
module "azure_region" {
  source  = "claranet/regions/azurerm"
  version = "5.1.0"

  azure_region = var.azure_region
}


# Another way to create a resource group compared to my local module listed above.
module "rg" {
  source  = "claranet/rg/azurerm"
  version = "5.1.0"

  location    = module.azure_region.location
  client_name = var.client_name
  environment = var.environment
  stack       = var.stack
}


# Log Analytics Workspace and Storage Account with SAS Token to upload logs to.
module "logs" {
  source  = "claranet/run-common/azurerm//modules/logs"
  version = "6.0.1"

  client_name         = var.client_name
  environment         = var.environment
  stack               = var.stack
  location            = module.azure_region.location
  location_short      = module.azure_region.location_short
  resource_group_name = module.rg.resource_group_name
}


# Create an Azure API Management (APIM).
module "apim" {
  source  = "claranet/api-management/azurerm"
  version = "6.0.0"

  location       = module.azure_region.location
  location_short = module.azure_region.location_short
  client_name    = var.client_name
  environment    = var.environment
  stack          = var.stack

  resource_group_name = module.rg.resource_group_name

  sku_name        = "Standard_1"
  publisher_name  = "Contoso ApiManager"
  publisher_email = "api_manager@test.com"


  logs_destinations_ids = [
    module.logs.logs_storage_account_id,
    module.logs.log_analytics_workspace_id
  ]
}
