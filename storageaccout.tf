
resource "random_id" "randamId"{
  keepers = {
     resource_group = azurerm_resource_group.myterraformGroup.name
  }
 byte_length = 8 
}
resource "azurerm_storage_account" "example" {
  name                     = "diag${random_id.randomId.hex}"
  resource_group_name      = azurerm_resource_group.myterraformGroup.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}