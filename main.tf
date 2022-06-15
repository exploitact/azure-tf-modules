# README.md has all the info needed to get started.

# This is a comment

/*
This is a 
multi line comment 
*/



# Create a Azure resource group. Real-life usage. 
module "resource_group" {
  source = "./modules/azure-resource-group"
  # This is the file source/directory of the module where I'm pulling this code from. It's reusable code in a sense. 
  # When you add a new module or copy this, run terraform init to initialize the new module. 
  resource_group_name = var.name
  # Check what var.name is in the variables.tf and terraform.tfvars file. 
  # In the future terraform.tfvars may not be needed since we can just store variables in terraform cloud/circleci.
  /* I added terraform.tfvars because, There can be situation where you 
  need create multiple tfvars files based on the environment like stage, production. (stage.tfvars, production.tfvars) */
  resource_location = var.location

}

/*  
Default config; copy this and change the values. Or for best practices use variables. 
module "resource_group_sample" {
  # change the module name to anything you like. I put resource_group_sample as an example. 
  source   = "./modules/azure-resource-group"
  resource_group_name = "sample"
  # Or just use variable names so when you change them it will be a lot easier and it's better for naming conventations. 
  location_resource = "West US"
  # Add any location you want. The services may change depending on your location/region. Like vm sizes and certain resources. 
  # A Location represents the city or area of the Azure Region. 

}
*/

# No comments, resource group 
/*
module "resource_group_example" {
  source = "./modules/azure-resource-group"
  resource_group_name = var.name
  resource_location = var.location
*/


/*
# Create an Azure B2C Directory. Doesn't work with CI/CD using a Service. 
# Sadly at the moment you can only manage an existing b2c tenant.
module "azure-b2c" {
  source           = "./modules/azure-b2c"
  b2c_display_name = var.name
  b2c_domain_name  = var.name
  # could also use a variable value; see module "azure-b2c-sample"
  b2c_resource_group = module.resource_group.rg_name_out
  b2c_sku_name       = "PremiumP1"
  
}
*/
 


# No comments apim
/*
module "azure-apim_sample" {
  source               = "./modules/azure-apim"
  name                 = var.name
  apim_resource_group  = module.resource_group.rg_name_out
  apim_location        = var.location
  apim_publisher_name  = "My Company"
  apim_publisher_email = "company@terraform.io"
  apim_sku_name        = "Developer_1"

}
*/

module "azure-linux-function-app" {
  source = "./modules/azure-functions/linux_function_app"
  name   = var.name
  # Create a variable in the variables.tf file and either use the default value or define your variable in terraform.tfvars. 
  # Or you can just name it anything you want as long as terraform accepts it. Like, name = "nodejsfunctionapp"
  storage_account_name = var.name
  # var.name is just a default value that I defined in variables.tf and declared it as thisisaexample in terraform.tfvars.
  function_resource_group = module.resource_group.rg_name_out
  function_location       = var.location
  # This is just a default value that I defined in variables.tf and declared it as thisisaexample in terraform.tfvars.
  function_account_tier = "Standard"
  /*
   Defines the Tier to use for this storage account. Valid options are Standard and Premium. 
   For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created.
  */
  function_account_replication_type = "LRS"
  # https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account
  # Changing this forces a new resource to be created when types LRS, GRS and RAGRS are changed to ZRS
  service_plan_name = var.name
  # Defualt variable name. Change it to anything you like. 
  function_os_type = "Linux"
  # Chose values like Windows, Linux, or Windows Container
  function_sku_name = "Y1"
  # The SKU for the plan. Possible values include B1, B2, B3,
  # D1, F1, FREE, I1, I2, I3, I1v2, I2v2, I3v2, P1v2, P2v2, etc. Check online for more values. 

}

# No comments linux function app
/*
module "azure-linux-function-app_sample" {
  source                            = "./modules/azure-functions/linux_function_app"
  name                              = var.name
  storage_account_name              = var.name
  function_resource_group           = module.resource_group.rg_name_out
  function_location                 = var.location
  function_account_tier             = "Standard"
  function_account_replication_type = "LRS"
  service_plan_name                 = var.name
  function_os_type                  = "Linux"
  function_sku_name                 = "Y1"

}
*/