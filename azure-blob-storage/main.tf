resource "azurerm_resource_group" "example" {
  name     = var.azurem_resource_group-name
  location = var.azurem_resource_group_location
}
resource "azurerm_storage_account" "example" {
  name                     = var.azurem_resource_group-name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             =  var.account_tier
  account_replication_type = var.account_replication_type
  
}
resource "azurerm_storage_container" "example" {
  name                  = "vhds"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}
resource "azurerm_storage_blob" "example" {
  name                   = "my-awesome-content.zip"
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = azurerm_storage_container.example.name
  type                   = "Block"
  source                 = "some-local-file.zip"
}
