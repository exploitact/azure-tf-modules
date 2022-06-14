# Local built of APIM but I decide to go with a Terraform version on their repo
resource "azurerm_api_management" "apim" {
  name                = "${var.name}-apim"
  location            = var.apim_location
  resource_group_name = var.apim_resource_group
  publisher_name      = "My Company"
  publisher_email     = "company@terraform.io"

  sku_name = "Developer_1"
}