resource "azurerm_public_ip" "publicip" {
  name                = var.ipaddressname
  resource_group_name = azurerm_resource_group.myterraformGroup.name
  location            = var.location
  allocation_method   = "Dynamic"
  
}