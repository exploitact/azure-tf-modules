# Define a simple resource group where all your resources will be in. Easy to use because you can manage all permissions/access here. 
resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group_name}-resource"
  location = var.resource_location
}

