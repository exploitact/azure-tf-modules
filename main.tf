# Define a simple resource group where all your resources will be in. Easy to use because you can manage all permissions/access here. 
resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group_name}-resource"
  location = var.location
}

/*
# Sample code for running a docker container
resource "azurerm_container_group" "rg" {
  name                = var.generic
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  ip_address_type     = "Public"
  dns_name_label      = var.generic
  os_type             = "Linux"

  container {
    name   = var.generic
    image  = "linuxserver/heimdall"
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 80
      protocol = "TCP"
    }
    
    ports {
      port     = 443
      protocol = "TCP"
    }

  }

  tags = {
    environment = "testing"
  }
}
*/
