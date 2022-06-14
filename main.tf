# README.md has all the info needed to get started.

# Create a Azure resource group. Real-life usage. 
module "resource_group" {
  source              = "./modules/azure-resource-group"
  resource_group_name = var.name
  resource_location   = var.location

}


/*  
Default config; copy this and change the values. Or for best practices use variables. 
module "resource_group_sample" {
  source   = "./modules/azure-resource-group"
  resource_group_name = "sample"
  location_resource = "West US"
}
*/


# Create an Azure B2C Directory. Real-life usage. 
module "azure-b2c" {
  source           = "./modules/azure-b2c"
  b2c_display_name = var.name
  b2c_domain_name  = var.name
  # could also use a variable value; see module "azure-b2c-sample"
  b2c_resource_group = module.resource_group.rg_name_out
  b2c_sku_name       = "PremiumP1"
  
}


/*  
Default config; copy this and change the values. Or for best practices use variables. 
module "azure-b2c-sample" {
  source   = "./modules/azure-b2c"
  b2c_display_name = "sample"
  b2c_domain_name = "sample"
  b2c_resource_group = "sample" # or b2c_resource_group = var.name to refer to the module above for resources groups
}
*/


# Create an Azure API Management (APIM) - (Basic version)

module "azure-apim" {
  source               = "./modules/azure-apim"
  name                 = var.name
  apim_resource_group  = module.resource_group.rg_name_out
  apim_location        = var.location
  apim_publisher_name  = "My Company"
  apim_publisher_email = "company@terraform.io"
  apim_sku_name        = "Developer_1"
 
}
