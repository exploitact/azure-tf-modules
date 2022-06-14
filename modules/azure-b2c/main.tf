# Kinda overkill for just one resource to make a module but it's good practice
resource "azurerm_aadb2c_directory" "addb2c" {
  country_code            = "US"
  data_residency_location = "United States"
  display_name            = var.b2c_display_name
  domain_name             = "${var.b2c_domain_name}.onmicrosoft.com"
  resource_group_name     = var.b2c_resource_group
  sku_name                = var.b2c_sku_name
}