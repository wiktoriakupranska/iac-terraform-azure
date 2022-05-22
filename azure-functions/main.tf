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
resource "azurerm_app_service_plan" "example" {
  name                = var.azurerm_service_NameOfThePlan
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  sku {
    tier = var.sku_tier
    size = var.sku_size
  }
}
resource "azurerm_linux_function_app" "example" {
  name                = var.azurerm_linux_function_app_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location

  storage_account_name = azurerm_storage_account.example.name
  service_plan_id      = azurerm_service_plan.example.id

  site_config {}
}

